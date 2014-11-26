$unit = "Gigabytes"
$files = Get-ChildItem -Recurse -Include * \\MTS-STORAGE\d$\video_data | Where-Object { $_.LastWriteTime -lt "01/01/2014" }
$totalSize = ($files | Measure-Object -Sum Length).Sum /1GB
$totalsize = "{0:n2}" -f $totalsize
Write-Host -NoNewline $totalsize
" $unit2
