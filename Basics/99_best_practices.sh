#!/bin/bash
# Best practices
echo "script uses strict mode in Bash to make the script more reliable and easier to debug"
echo ""

set -euo pipefail
IFS=$'\n\t'

echo "Using set -euo pipefail for safer scripting"
filename="99_op.log"
echo ""

if [[ -f "$filename" ]]; then
  echo "$filename exists"
else
  echo "$filename does not exist"
fi

# set -euo pipefail
#  - This line enables safer scripting by changing Bash’s error-handling behavior:
#  - -e: Exit immediately if any command fails (non-zero exit status).
#  - -u: Treat unset variables as an error and exit immediately.
#  - -o pipefail: Return the exit code of the last command that failed in a pipeline (instead of just the last command).
#  - ✅ This combination is commonly used in production scripts to catch errors early and avoid silent failures.

# IFS=$'\n\t'
#  - Sets the Internal Field Separator (IFS) to newline and tab:
#  - This avoids issues when splitting strings—especially filenames that contain spaces.
#  - Default IFS includes space, which can break things during loops or file parsing.

# echo "Using set -euo pipefail for safer scripting"
# Just a message to indicate the script has entered strict mode.

# Summary:
#  - This is a safe and clean template for Bash scripting:
#  - It avoids many common pitfalls.
#  - It checks whether a file exists.
#  - It follows best practices for scripting in environments like CI/CD, automated jobs, or sensitive file processing.
