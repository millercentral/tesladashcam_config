@echo off
ForFiles /p "\\nas01.lan\video\other\tesla" /s /d -60 /c "cmd /c del @file"
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%
d:\tools\tesla_dashcam\tesla_dashcam  @teslausb.txt --output \\nas01.lan\video\other\tesla\max-%CUR_YYYY%-%CUR_MM%-%CUR_DD%_%CUR_HH%-%CUR_NN%-%CUR_SS%.mp4