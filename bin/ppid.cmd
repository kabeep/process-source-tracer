@echo off

REM 获取父进程 ID
for /F "skip=1 delims=" %%i in ('wmic process where "ProcessId=%1" get ParentProcessId ^| findstr /R /V "^$"') do (
  echo %%i
  exit /B
)
