#!/bin/bash

cppcheck --enable=all --inline-suppr --force --quiet --error-exitcode=1  ../Software/Firmware/Inc/* ../Software/Firmware/Src/* 2>C_Lint_ReportFull.txt

# look for errors in gm_files (those are aplicatin files where we are interested in errors)
# store them to separate log ans show them on stdout
grep -F '[../Software/NUCLEO-F091RC/Src/gm_' C_Lint_ReportFull.txt > C_Lint_ReportApplicationOnly.txt
cat C_Lint_ReportApplicationOnly.txt

# set exit code to ok if no errors were found in aplication files
if [ "$(wc -l < C_Lint_ReportApplicationOnly.txt)" -eq 0 ]; then
    true
else
    false
fi