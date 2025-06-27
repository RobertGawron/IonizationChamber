#!/usr/bin/env bash
set -euo pipefail

# ────────────────────────────────────────────────────────────────
# 1. Activate the Python v-env so prospector, vjunit, etc. are on PATH
# ────────────────────────────────────────────────────────────────
source /workspace/venv/bin/activate

# ────────────────────────────────────────────────────────────────
# 2. Where to put the generated artefacts
# ────────────────────────────────────────────────────────────────
OUTPUT_ROOT="/workspace/DevOps/BuildArtifacts/PyStaticAnalysis"
mkdir -p "${OUTPUT_ROOT}"

# ────────────────────────────────────────────────────────────────
# 3. Projects we want to analyse  ➜  "short-name → source-dir"
#    Add or remove entries here if you lint more trees later.
# ────────────────────────────────────────────────────────────────
declare -A TARGETS=(
  [MeasurementAcquisition]="/workspace/Software/MeasurementAcquisition"
  [Simulation]="/workspace/Simulation"
)

# Overall exit status: 0 = success, 1 = at least one failure
OVERALL_STATUS=0

# ────────────────────────────────────────────────────────────────
# 4. Patch vjunit once (Prospector-HTML bug-work-around)
# ────────────────────────────────────────────────────────────────
find /workspace/venv/ -type f -name "vjunit.py" \
     -exec sed -i "s/children = testcase\.getchildren()/children = list(testcase)/" {} +

# ────────────────────────────────────────────────────────────────
# 5. Run Prospector for each target and render HTML
# ────────────────────────────────────────────────────────────────
for NAME in "${!TARGETS[@]}"; do
  SRC_DIR="${TARGETS[$NAME]}"
  OUT_DIR="${OUTPUT_ROOT}"
  mkdir -p "${OUT_DIR}"

  XML_REPORT="${OUT_DIR}/${NAME}.xml"    # xUnit output
  HTML_REPORT="${OUT_DIR}/${NAME}.html"  # final dashboard

  echo "➤ Prospector ⇒ ${NAME}"
  if prospector  \
        --profile /workspace/DevOps/Scripts/.prospector.yaml \
        --strictness veryhigh \
        --doc-warnings \
        --output-format xunit \
        "${SRC_DIR}" \
        > "${XML_REPORT}"; then
      echo "   ✔ Lint completed"
  else
      echo "   ✖ Prospector reported issues"
      OVERALL_STATUS=1
  fi

  echo "   • Rendering HTML dashboard"
  if ! vjunit -f "${XML_REPORT}" -o "${HTML_REPORT}" ; then
      echo "     ⚠  HTML conversion failed (ignored in CI exit status)"
  fi

  # Expand accordion sections so the report opens fully expanded
  sed -i "/\$('.ui.accordion').accordion();/c\\
\$('.ui.accordion').accordion();\\
\$('.ui.accordion .title').addClass('active');\\
\$('.ui.accordion .content').addClass('active');" "${HTML_REPORT}"

  echo "   • Reports: ${XML_REPORT}  |  ${HTML_REPORT}"
  echo
done

# ────────────────────────────────────────────────────────────────
# 6. Final exit code for CI
# ────────────────────────────────────────────────────────────────
exit "${OVERALL_STATUS}"
