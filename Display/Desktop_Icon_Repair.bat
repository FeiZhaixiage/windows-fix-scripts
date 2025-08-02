@echo off
set spacing=-1125
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v IconSpacing /t REG_SZ /d %spacing% /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v IconVerticalSpacing /t REG_SZ /d %spacing% /f
taskkill /f /im explorer.exe
timeout /t 2 > nul
start explorer.exe
pause