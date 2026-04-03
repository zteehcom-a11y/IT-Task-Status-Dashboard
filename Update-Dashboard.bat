@echo off
echo Updating IT Dashboard Data from Excel...
powershell -NoProfile -Command "$excel = New-Object -ComObject Excel.Application; $wb = $excel.Workbooks.Open('%~dp0Report Ticket 2026.xlsx'); $ws = $wb.Sheets.Item(1); $data = @(); $headers = @(); for($c=1; $c -le $ws.UsedRange.Columns.Count; $c++){ $headers += $ws.Cells.Item(1,$c).Value2 }; for($r=2; $r -le $ws.UsedRange.Rows.Count; $r++){ $obj = [ordered]@{}; for($c=1; $c -le $headers.Count; $c++){ $obj[$headers[$c-1]] = $ws.Cells.Item($r,$c).Value2 }; $data += $obj }; $data | ConvertTo-Json -Depth 10 | Out-File -FilePath '%~dp0data.json' -Encoding utf8; $wb.Close($false); $excel.Quit();"
echo Done! Please refresh your browser (F5).
pause