"""Unit tests for :pyclass:`measurement_acquisition.measurement_storage.MeasurementStorage`."""

from __future__ import annotations

import csv
import tempfile
import unittest
from pathlib import Path
from typing import ClassVar, Final
from unittest.mock import MagicMock, mock_open

from measurement_acquisition.config import CsvWriterConfig
from measurement_acquisition.measurement_storage import MeasurementStorage


# ------------------------------------------------------------------ #
# Helper subclasses for test-specific constants                      #
# ------------------------------------------------------------------ #
class CsvWriterCfgHelper(CsvWriterConfig):  # pylint: disable=too-few-public-methods
    """Minimal CsvWriterConfig override used across these tests."""

    PATH: ClassVar[Final[Path]] = Path("data.csv")
    DELIMITER: ClassVar[Final[str]] = ","
    TIMESTAMP_LABEL: ClassVar[Final[str]] = "time"
    VOLTAGE_LABEL: ClassVar[Final[str]] = "voltage"


class TestMeasurementStorage(unittest.TestCase):
    """Verify header writing, row persistence, and real-file behaviour."""

    # ------------------------------------------------------------------ #
    # Common test setup                                                  #
    # ------------------------------------------------------------------ #
    def setUp(self):
        """Create a MeasurementStorage wired to mocks."""
        self.writer_cfg = CsvWriterCfgHelper()

        self.mock_file = mock_open()
        self.mock_writer = MagicMock()

        self.storage = MeasurementStorage(
            writer_config=self.writer_cfg,
            file_opener=self.mock_file,
            csv_writer_factory=lambda *_, **__: self.mock_writer,
        )

    # ------------------------------------------------------------------ #
    # Header creation                                                    #
    # ------------------------------------------------------------------ #
    def test_connect_opens_file_and_writes_header(self):
        """``connect`` must open the file and emit a single header row."""
        self.storage.connect()

        self.mock_file.assert_called_once_with(
            self.writer_cfg.PATH, "w", encoding="UTF8", newline=""
        )
        self.mock_writer.writerow.assert_called_once_with(
            [self.writer_cfg.TIMESTAMP_LABEL, self.writer_cfg.VOLTAGE_LABEL]
        )

    # ------------------------------------------------------------------ #
    # Single-row persistence                                             #
    # ------------------------------------------------------------------ #
    def test_save_measurement_writes_data_row(self):
        """``save_measurement`` must append exactly one row."""
        self.storage.connect()
        self.mock_writer.reset_mock()  # ignore header

        sample_time = "2023-01-01 00:00"
        sample_voltage = 3.14
        self.storage.save_measurement(sample_time, sample_voltage)

        self.mock_writer.writerow.assert_called_once_with([sample_time, sample_voltage])

    # ------------------------------------------------------------------ #
    # End-to-end test on real files                                      #
    # ------------------------------------------------------------------ #
    def test_real_file_operations(self):
        """Write to a real temp file and verify on-disk contents."""
        with tempfile.TemporaryDirectory() as tmpdir:

            class TmpCsvWriterCfg(  # pylint: disable=too-few-public-methods
                CsvWriterConfig
            ):
                """CsvWriterConfig that writes inside the temporary directory."""

                PATH: ClassVar[Final[Path]] = Path(tmpdir) / "data.csv"

            real_cfg = TmpCsvWriterCfg()
            storage = MeasurementStorage(real_cfg)
            storage.connect()
            storage.save_measurement("2023-01-01 00:00", 3.14)
            storage.disconnect()

            with real_cfg.PATH.open(encoding="utf-8", newline="") as fh:
                rows = list(csv.reader(fh, delimiter=real_cfg.DELIMITER))

            self.assertEqual(
                rows,
                [
                    [real_cfg.TIMESTAMP_LABEL, real_cfg.VOLTAGE_LABEL],
                    ["2023-01-01 00:00", "3.14"],
                ],
            )
