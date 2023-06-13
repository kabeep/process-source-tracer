@echo off
setlocal

REM 获取当前批处理文件的完整路径
set "current_script=%~f0"

REM 获取当前批处理文件所在的目录路径
for %%A in ("%current_script%") do set "current_directory=%%~dpA"

REM 保存原始的当前工作目录
pushd "%current_directory%"

REM 调用 bin/core.bat 并传递参数 %1
call bin/core.cmd %1

REM 恢复原始的当前工作目录
popd