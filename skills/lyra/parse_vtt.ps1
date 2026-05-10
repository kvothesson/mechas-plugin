param([string]$Path)
$vtt = Get-Content $Path -Encoding UTF8
($vtt | Where-Object {
    $_ -ne "" -and
    $_ -notmatch "^WEBVTT" -and
    $_ -notmatch "^\d{2}:\d{2}:" -and
    $_ -notmatch "^Kind:" -and
    $_ -notmatch "^Language:" -and
    $_ -notmatch "^<\d"
} | ForEach-Object { $_ -replace "<[^>]+>","" } | Select-Object -Unique) -join " "
