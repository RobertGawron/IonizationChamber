"""Measurement-storage utilities.

Persists timestamp/voltage pairs to a CSV file using parameters supplied via
CsvWriterConfig.  Nothing is written until ``connect()`` is called, which keeps
unit tests fast and side-effect free.
"""

from __future__ import annotations

import csv
from pathlib import Path
from typing import Callable, Any, TextIO

from measurement_acquisition.config import CsvWriterConfig


class MeasurementStorage:
    """Write timestamped voltage readings to a CSV file.

    Parameters
    ----------
    writer_config :
        A :class:`CsvWriterConfig` instance that specifies file path, delimiter
        and column labels.
    file_opener :
        Callable used to open the destination file (defaults to :pyfunc:`open`).
        Pass a stub to keep unit tests in-memory.
    csv_writer_factory :
        Callable that returns a CSV writer given a file-like object
        (defaults to :pyfunc:`csv.writer`).

    Attributes
    ----------
    writer_config :
        The configuration object passed in at construction time.
    file_handler :
        File handle returned by *file_opener*.  ``None`` until
        :pymeth:`connect` is called.
    writer :
        The CSV writer instance produced by *csv_writer_factory*.
    """

    def __init__(
        self,
        writer_config: CsvWriterConfig | None = None,
        *,
        file_opener: Callable[..., TextIO] = open,
        csv_writer_factory: Callable[..., Any] = csv.writer,
    ) -> None:
        """Instantiate a storage backend with optional dependency injection.

        Parameters
        ----------
        writer_config
            CSV output parameters.  Falls back to :class:`CsvWriterConfig` defaults.
        file_opener
            Function used to open the file (defaults to the built-in :pyfunc:`open`).
        csv_writer_factory
            Factory that returns a configured :pyclass:`csv.writer`.
        """
        self.writer_config = writer_config or CsvWriterConfig()
        self.file_opener = file_opener
        self.csv_writer_factory = csv_writer_factory
        self.file_handler: TextIO | None = None
        self.writer: Any | None = None

    # --------------------------------------------------------------------- #
    # Public API                                                             #
    # --------------------------------------------------------------------- #
    def connect(self) -> None:
        """Open the CSV file and emit the header row."""
        path: Path = Path(self.writer_config.PATH)
        path.parent.mkdir(parents=True, exist_ok=True)

        self.file_handler = self.file_opener(path, "w", encoding="UTF8", newline="")
        self.writer = self.csv_writer_factory(
            self.file_handler,
            delimiter=self.writer_config.DELIMITER,
        )
        self.writer.writerow(
            [self.writer_config.TIMESTAMP_LABEL, self.writer_config.VOLTAGE_LABEL]
        )

    def disconnect(self) -> None:
        """Flush any buffered data and close the CSV file gracefully."""
        if self.file_handler is not None:
            self.file_handler.flush()
            self.file_handler.close()
            self.file_handler = None
            self.writer = None

    def save_measurement(self, timestamp: str, voltage: float) -> None:
        """Append one (timestamp, voltage) row to the CSV file."""
        if self.writer is None:
            raise RuntimeError("connect() must be called before save_measurement().")

        self.writer.writerow([timestamp, voltage])
        self.file_handler.flush()
