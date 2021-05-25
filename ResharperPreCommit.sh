#!/bin/sh

set -x
echo "Formatting files..."


STAGED_FILES=`git diff --name-only --cached --diff-filter=d`
echo "Staged files ${STAGED_FILES}"


export PATH="$PATH:/Users/$USER/.dotnet/tools"
SOLUTION_FILE=$(find . -type f -name "*.sln")
git clone https://github.com/vidurvij-Unity/Resharper-pre-commit.git /Users/$USER/Desktop 
jb cleanupcode $SOLUTION_FILE --settings="/Users/$USER/Desktop/Resharper-pre-commit/Unity.Global.DotSettings"

echo "Restaging files: $STAGED_FILES"
echo ${STAGED_FILES} | xargs -t -l git add