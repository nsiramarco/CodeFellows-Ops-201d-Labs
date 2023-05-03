@echo off

set "source=C:\Users\Jorge\Desktop\Work"
set "destination=D:\Backup\Work"

echo Copying files from %source% to %destination%...

robocopy "%source%" "%destination%" /E /R:0 /W:0 /MT:32 /XJ

echo Copy completed.
pause