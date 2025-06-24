# Activate the virtual environment
source /workspace/venv/bin/activate

# Set up directories for artifacts
OUTPUT_DIR="/workspace/DevOps/BuildArtifacts/PythonStaticAnalysis"
mkdir -p "$OUTPUT_DIR"

# Define input and output file paths
MEASUREMENT_ACQUISITION_JSON="$OUTPUT_DIR/SystemTests.json"
MEASUREMENT_ACQUISITION_HTML="$OUTPUT_DIR/SystemTests.html"

# Initialize exit code tracker
EXIT_CODE=0

# Run Prospector analysis
prospector --profile /workspace/DevOps/Scripts/.prospector.yaml --strictness veryhigh --doc-warnings --output-format xunit /workspace/Software/MeasurementAcquisition > "$MEASUREMENT_ACQUISITION_JSON" || EXIT_CODE=1

# vjunit is broken in original version, so we need to fix it
find /workspace/venv/ -type f -name "vjunit.py" -exec sed -i 's/children = testcase\.getchildren()/children = list(testcase)/g' {} +

# Convert JSON reports to HTML using prospector-html
vjunit -f "$MEASUREMENT_ACQUISITION_JSON" -o "$MEASUREMENT_ACQUISITION_HTML" || echo "Warning: HTML conversion failed for MeasurementAcquisition"

# Expand all tabs in the HTML reports
sed -i "/\$('.ui.accordion').accordion();/c\\
\$('.ui.accordion').accordion();\\
\$('.ui.accordion .title').addClass('active');\\
\$('.ui.accordion .content').addClass('active');" "$MEASUREMENT_ACQUISITION_HTML"

# Exit with the appropriate code
exit $EXIT_CODE
