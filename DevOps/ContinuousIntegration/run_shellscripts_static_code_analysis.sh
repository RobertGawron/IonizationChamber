#!/bin/bash

shellcheck /workspace/ContinuousIntegration/*.sh | tee Shell_Script_Lint_Report.txt
