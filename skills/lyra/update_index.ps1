$indexDir = "$env:LOCALAPPDATA\lyra"
$indexPath = "$indexDir\index.csv"
New-Item -ItemType Directory -Force -Path $indexDir | Out-Null

$entries = yt-dlp --skip-download --print "%(id)s|%(title)s|%(upload_date)s" --playlist-end 50 "https://www.youtube.com/@diputados.argentina" 2>$null |
    Where-Object { $_ -match "^\w{11}\|" }

if ($entries) {
    "id|title|date" | Set-Content $indexPath -Encoding UTF8
    $entries | Add-Content $indexPath -Encoding UTF8
    Write-Output "Índice actualizado: $($entries.Count) sesiones en $indexPath"
} else {
    Write-Output "Error: no se pudo obtener el listado del canal."
}
