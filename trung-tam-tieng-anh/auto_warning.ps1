# Script: auto_warning.ps1
# Tac gia: Hoa Việt Hoàng
# Ngay tao: 10/21/2026
 
Write-Host "Dang loc canh bao thanh toan..."
 
"=== CANH BAO THANH TOAN ===" > ./logs/warning_report.txt
Get-Content "logs/payment.log" | Select-String "WARNING" >> logs/warning_report.txt
 
Write-Host "Hoan thanh!"