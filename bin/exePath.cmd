@echo off

REM 获取进程的可执行文件路径
for /F "skip=1 delims=" %%i in ('wmic process where "ProcessId=%1" get ExecutablePath ^| findstr /R /V "^$"') do (
  echo %%i
  exit /B
)
