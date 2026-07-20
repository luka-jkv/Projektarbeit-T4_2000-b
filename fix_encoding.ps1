$files = Get-ChildItem -Path . -Recurse -Filter *.tex
foreach ($file in $files) {
    if ($file.FullName -like "*\content\*" -or $file.FullName -like "*\ads\*" -or $file.Name -eq "dokumentation.tex") {
        $content = Get-Content $file.FullName -Raw
        if ($content -match "Ã") {
            Write-Host "Fixing $($file.Name)"
            $content = $content -replace "Ã¤", "ä"
            $content = $content -replace "Ã¶", "ö"
            $content = $content -replace "Ã¼", "ü"
            $content = $content -replace "Ã„", "Ä"
            $content = $content -replace "Ã–", "Ö"
            $content = $content -replace "Ãœ", "Ü"
            $content = $content -replace "ÃŸ", "ß"
            Set-Content -Path $file.FullName -Value $content -Encoding UTF8
        }
    }
}
Write-Host "Done"