@echo off

setlocal enabledelayedexpansion

REM 初始化输入 PID
set "pid=%1"
set "previous_pid=0"

:loop
if "!parentPID!" == "!previous_pid!" (
    echo Reached the root process.
    goto :end
)

REM 调用 ppid.cmd 并传递进程 ID
for /F "skip=1 delims=" %%i in ('wmic process where "ProcessId=%pid%" get ParentProcessId ^| findstr /R /V "^$"') do (
    set "parentPID=%%i"
    if "!parentPID!" == "!previous_pid!" (
        echo Reached the root process.
        goto :end
    )
)

REM 调用 exePath.cmd 并传递进程 ID
for /F "skip=1 delims=" %%i in ('wmic process where "ProcessId=%pid%" get ExecutablePath ^| findstr /R /V "^$"') do set "exePath=%%i"

REM 输出 Parent Process ID 和 Executable Path
echo.
echo Parent Process ID: !parentPID!
echo Executable Path:   !exePath!

REM 更新下一次递归的输入为父进程的 PID
set "previous_pid=!pid!"
set "pid=!parentPID!"

REM 进入下一次循环
goto :loop

:end
echo End of the recursion.

REM 继续执行其他命令...