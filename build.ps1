$dir = "C:\Users\Osama 3\.gemini\antigravity\scratch\limited-liability-attorney"
$tplPath = Join-Path $dir "template.html"
$b64Path = Join-Path $dir "donald-b64.txt"
$outPath = Join-Path $dir "index.html"

$tpl = [System.IO.File]::ReadAllText($tplPath)
$b64 = [System.IO.File]::ReadAllText($b64Path).Trim()

$result = $tpl.Replace("{{DONALD_B64}}", $b64)
[System.IO.File]::WriteAllText($outPath, $result, [System.Text.Encoding]::UTF8)

Write-Host "Success. Output file written to: $outPath (Size: $((Get-Item $outPath).Length) bytes)"
