#!/bin/bash

shellcheck ./*.sh | tee Shell_Script_Lint_Report.txt
