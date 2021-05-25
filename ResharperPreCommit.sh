#!/bin/sh

set -x
echo "Formatting files..."
export PATH="$PATH:/Users/$USER/.dotnet/tools"
SOLUTION_FILE=$(find . -type f -name "*.sln")
git clone https://github.com/vidurvij-Unity/Resharper-pre-commit.git /Users/$USER/Desktop 
jb cleanupcode $SOLUTION_FILE --settings="/Users/$USER/Desktop/Resharper-pre-commit/Unity.Global.DotSettings"  