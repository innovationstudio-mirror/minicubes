@set KDOT=lgzYLJsFwGyoBXeQCq3bU108nNaWS4miEHPk7j2VIuxRKvTtMAp6cZDfhO9d5r
@echo off
mode con: lines=42 cols=136
chcp 65001
setlocal EnableDelayedExpansion
title MiniCubes A2
goto x
:menu
color f0
cls
batbox /g 45 15 /c 0x70 /d "        New Game        "
batbox /g 45 17 /c 0x70 /d "          Load          "
getinput /m 45 15 68 15 45 17 68 17 /h 10 10 /t 1000
if not exist sy\beta_3\systema.dll echo Batbox>sy\beta_3\systema.dll&&goto :x
if %errorlevel%==1 echo Batbox>sy\beta_3\systema.dll&&goto :x
if %errorlevel%==1 echo Batbox>sy\beta_3\systema.dll&&goto :x
if %errorlevel%==1 echo Batbox>sy\beta_3\systema.dll&&goto :x
if %errorlevel%==2 goto :x
goto menu
:x
echo Batbox>sy\beta_3\systema.dll
cls
set MAX2=134&set MIN2=1
set A2=%time%
set A2=%A2:~-1%
set /a randomik1=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=31&set MIN2=21
set A2=%time%
set A2=%A2:~-1%
set /a iron_posy=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=1&set MIN2=134
set A2=%time%
set A2=%A2:~-1%
set /a iron_posx=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=1&set MIN2=134
set A2=%time%
set A2=%A2:~-1%
set /a gold_posx=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=30&set MIN2=40
set A2=%time%
set A2=%A2:~-1%
set /a gold_posy=MIN2+(MAX2-MIN2+1) * %A2%/10

set x=%randomik1%
set y=18
set iron=0
set dirt=0
set grass=0
set iront=13
set gold=0
set goldt=5
:game
if %x% == -1 set /a x+=1&&goto game
if %y% == -1 set /a y+=1&&goto game
if %x% == 136 set /a x-=1&&goto game
if %y% == 41 set /a y-=1&&goto game
color 07
color b1
    cls
    Batbox /g 0 20 /c 0xa2 /d "                                                                                                                                        " /g 0 21 /c 0x44 /d "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        " /g 1 41 /c 0x07 /d "X: %x%" /g 10 41 /d "Y: %y%" /g 20 41 /d "iron: %iron%" /g 30 41 /c 0x07 /d "gold: %gold%" /g 40 41 /d "dirt: %dirt%" /g 50 41 /d "grass: %grass%"
    if %iront% gtr 1 batbox /g %iron_posx% %iron_posy% /c 0x88 /d " "&&if %x% == %iron_posx% if %y% == %iron_posy% set /a iron+=1&&set /a iront -=1
    if %goldt% gtr 1 batbox /g %gold_posx% %gold_posy% /c 0x66 /d " "&&if %x% == %gold_posx% if %y% == %gold_posy% set /a gold+=1&&set /a goldt -=1
    if %y% == 19 set /a grass+=1
    if %y% GEQ 20 set /a dirt+=1
    for /f "usebackq delims=" %%i in ("sy\beta_3\systema.dll") do (set command=%%i&&!command!)
    batbox /g %x% %y% /c 0x11 /d " "
    choice /c adwseфвцыуi12304r /n
    if %errorlevel%==17 goto :reload
    if %errorlevel%==16 call :block4
    if %errorlevel%==15 call :block
    if %errorlevel%==14 call :block3
    if %errorlevel%==13 call :block2
    if %errorlevel%==12 call :block1
    if %errorlevel%==11 set /a y+=1
    if %errorlevel%==10 goto exit
    if %errorlevel%==9 set /a y+=1
    if %errorlevel%==8 set /a y-=1
    if %errorlevel%==7 set /a x+=1
    if %errorlevel%==6 set /a x-=1
    if %errorlevel%==5 goto exit
    if %errorlevel%==4 set /a y+=1
    if %errorlevel%==3 set /a y-=1
    if %errorlevel%==2 set /a x+=1
    if %errorlevel%==1 set /a x-=1
goto game

:block
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
    set line=%%a
    echo !line! /g %x% %y% /c 0xb1 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof

:block1
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
    set line=%%a
    echo !line! /g %x% %y% /c 0xa2 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof

:block2
if not %dirt% GEQ 1 goto :eof
set /a dirt -=1
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
    set line=%%a
    echo !line! /g %x% %y% /c 0x44 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof

:block3
if not %iron% GEQ 1 goto :eof
set /a iron -=1
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
    set line=%%a
    echo !line! /g %x% %y% /c 0x88 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof

:block4
if not %gold% GEQ 1 goto :eof
set /a gold -=1
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
    set line=%%a
    echo !line! /g %x% %y% /c 0x66 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof

:reload
cls
mode con: lines=41 cols=135
color 07
color b1
mode con: lines=42 cols=136
cls
goto game
:exit
exit
