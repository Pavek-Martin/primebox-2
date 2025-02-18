@echo off
title verze-2_150-255x175.bat
cls

set Y=175
REM echo Y=%Y%
REM pause

for /L %%X IN (150,1,255) DO (
REM            od,step,do
REM echo %%X
lua52 prime_box_verze_2-5.lua %%X %Y%
REM zip -9 C:/%%Xx%Y%-v2dos.txt.zip C:/%%Xx%Y%-v2dos.txt
REM zip -v -9 C:/%%Xx%Y%-v2dos.txt.zip C:/%%Xx%Y%-v2dos.txt
del C:\work\%%Xx%Y%-v2dos.txt
)
pause
@echo on
