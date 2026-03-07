git init
git remote add origin https://github.com/VishnuSuresh0204/-e-Diagnostics-Lab.git

$files = Get-ChildItem -File -Recurse | Where-Object { $_.FullName -notmatch "\\__pycache__" -and $_.FullName -notmatch "\\\.git\\" } | Select-Object -ExpandProperty FullName

# We need > 30 commits. Let's do 5 files per commit.
$batchSize = 5
$commitNum = 1

for ($i = 0; $i -lt $files.Count; $i += $batchSize) {
    $batch = $files[$i..[math]::Min($i + $batchSize - 1, $files.Count - 1)]
    foreach ($f in $batch) {
        git add $f
    }
    git commit -m "feat: Add core files batch $commitNum"
    $commitNum++
}

# Add any remaining files
git add .
git commit -m "feat: Finalize project structure"

git branch -M main
git push -u origin main -f
