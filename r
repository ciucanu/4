cd .\R2

Get-ChildItem -Recurse -Filter "*_R1.txt" | ForEach-Object {
    $newName = $_.Name -replace '_R1.txt$', '_R2.txt'
    Rename-Item -Path $_.FullName -NewName $newName
}

Write-Output "Renaming completed."
