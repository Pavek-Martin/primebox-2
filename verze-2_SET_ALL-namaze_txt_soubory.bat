@echo off
title verze-2_SET_ALL-namaze_txt_soubory.bat
cls

set /p Xmin="Xmin="
echo %Xmin%

set /p Xmax="Xmax="
echo %Xmax%

set /p krok="krok="
echo %krok%

set /p Y="osa y="
echo %Y%

REM pause

for /L %%X IN (%Xmin%,%krok%,%Xmax%) DO (
REM            od,step,do
lua52.exe prime_box_verze_2-5.out %%X %Y%
REM lua52.exe prime_box_verze_2-5.lua %%X %Y%
REM zip -9 C:/work/%%Xx%Y%-v2dos.txt.zip C:/work/%%Xx%Y%-v2dos.txt
REM zip -v -9 C:/work/%%Xx%Y%-v2dos.txt.zip C:/work/%%Xx%Y%-v2dos.txt
REM del C:\work\%%Xx%Y%-v2dos.txt
REM  ^^^ takze tady je zakomentovanej predchzi radek aby nemazal po prevodu txt -> bmp, source soubory
REM ale znamena to spoustu dat na disku
)
pause
@echo on
