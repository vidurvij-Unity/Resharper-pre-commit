echo "Formatting files..."
export PATH="$PATH:/Users/$USER/.dotnet/tools"
SOLUTION_FILE=$(find . -type f -name "*.sln")
jb cleanupcode $SOLUTION_FILE
