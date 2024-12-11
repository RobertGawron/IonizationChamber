#!/bin/bash

# shellcheck disable=SC1091
source /workspace/venv/bin/activate

flake8 --format=html --htmldir=python_lint_report /workspace/Software/MeasurementAcquisition/ /workspace/Simulation