@echo off
title  ActivateAIO Version 1.0 
@echo. 
@echo                                             KICH HOAT OFFICE 2010, 2013, 2016  
@echo                                           KICH HOAT WINDOWS 7,8,8.1,10 PRO/ENT 
@echo.                        
@echo                                    ==================== SUPPORT ====================
@echo                                    [  https://www.facebook.com/davis.nguyen.98837  ]
@echo                                    [               Nguyen Hoang Nam                ]
@echo                                    [  https://www.facebook.com/minhhieu.le.37625   ]
@echo                                    [                 Minh Hieu Le                  ]
@echo                                    =================================================
@echo.
color 0a
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo  Requesting Admin access...
    goto goUAC 
) else (
 goto goADMIN )

:goUAC
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:goADMIN
    pushd "%CD%"
    CD /D "%~dp0"
"files\maximizewindow.exe" "Administrator:   ActivateAIO Version 1.0 "

@echo                  ================ WINDOWS ===================================== OFFICE ====================
@echo.                 ================= ACTIVE ===================================== ACTIVE ====================
@echo                  [   0. Win 10 Version 1511 : An phim 0   ]   [  10. Active Online          : An phim 10  ]  
@echo                  [   1. Active Online       : An phim 1   ]   [  11. Active By Phone        : An phim 11  ]
@echo                  [   2. Active By Phone     : An phim 2   ]   [  12. Lay Step 2             : An phim 12  ]
@echo                  [   3. Lay Step 2          : An phim 3   ]   [  13. Nhap Step 3            : An phim 13  ] 
@echo                  [   4. Nhap Step 3         : An phim 4   ]   [  14. Ban quyen Office 2016  : An phim 14  ]
@echo                  [   5. Version Windows     : An phim 5   ]   [  15. Ban quyen Office 2013  : An phim 15  ] 
@echo                  [   6. Key Windows+Office  : An phim 6   ]   [  16. Mo MSAct Plus v1.0.5   : An phim 16  ]   
@echo                  [   7. Mo Kms Auto 2015    : An phim 7   ]   [  17. Huong Dan Su Dung      : An phim 17  ]
@echo                  [   8. Mo PIDKey           : An phim 8   ]   [  18. Back Up All            : An phim 18  ]
@echo                  [   9. Quet Loi Windows    : An phim 9   ]   [  19. Restore All            : An phim 19  ]
@echo                  ==========================================================================================
@echo                  [  20. Cac Tien Ich Khac: Update, Shortcut Menu chuot phai, Key Window + Office          ]      
@echo                  ==========================================================================================
VER
cscript "C:\Windows\System32\slmgr.vbs" /xpr |find "permanently" >nul
if %errorlevel%==0  (
@echo                               == BAN DANG SU DUNG WINDOWS DA KICH HOAT BAN QUYEN VINH VIEN ==
)
:begin
@echo.
set /p chon= + Lua chon cua ban la : [0-20] ?:

iF %CHON% == 0 (
start files\w10.exe
exit
)

if %chon% == 1 (
start files\Win_Onl.exe
exit
)

if %chon% == 2 (
start files\Win_Off.exe
)

if %chon% == 3 (
@echo.
cscript "C:\Windows\System32\slmgr.vbs" /dti |find "Installation ID" >iid.txt
FOR /F "tokens=*" %%i in (iid.txt) do  (
@echo + Step 2 cua ban la :  
@echo %%i 
)
start iid.txt 
goto begin
)

if %chon% == 4 (
@echo.
slui 4
pause
cscript "C:\Windows\System32\slmgr.vbs" /xpr |find "permanently"
if %errorlevel%==0  (
@echo           == Da kich hoat ban quyen vinh vien ==
@echo %key% >KEY_win.txt
pause >nul
exit
) 
goto begin
)

if %chon% == 5 (
winver
goto begin
)

if %chon% == 6 (
start files\Key.url
goto begin
)

if %chon% == 7 (
start files\KMSAuto_Net.exe
goto begin
)

If %chon% == 8 (
start PIDKey\PIDKey.exe
goto begin
)

If %chon% == 9 (
Sfc /Scannow 
goto begin
)

if %chon% == 10 (
start files\Off_Onl.exe
goto begin
)

if %chon% == 11 (
start files\Off_Off.exe
goto begin
)

if %chon% == 12 (
@echo.
@echo + Step 2 cua ban la :
cscript OSPP.VBS /dinstid |find "Installation ID" >iidoff.txt
FOR /F "tokens=*" %%i in (iidoff.txt) do  ( 
@echo %%i 
)
start iidoff.txt 
goto begin
)

if %chon% == 13 (
goto nhapcidoff
)

If %chon% == 14 (
cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /dstatus
cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /dstatus 
goto begin
)

If %chon% == 15 (
cscript "C:\Program Files\Microsoft Office\Office15\OSPP.VBS" /dstatus
cscript "C:\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS" /dstatus 
goto begin
)

If %chon% == 16 (
start msact\MSAct Plus.exe
goto begin
)

If %chon% == 17 (
start guide.txt
goto begin
)

if %chon% == 18 (
xcopy /s /e /y C:\Windows\System32\spp\store "%CD%"\backup
@echo - Hoan tat qua trinh Back Up ban quyen
goto begin
)

if %chon% == 19 (
xcopy /s /e /y "%CD%"\backup C:\Windows\System32\spp\store 
@echo - Hoan tat qua trinh Restore ban quyen 
goto begin
)

If %chon% == 20 (
if exist Extension.bat start Extension.bat
goto begin
)
goto begin

:nhapcidoff
set /p cid= - Hay nhap Confirmation ID roi an Enter :
@echo. 
@echo + Dang kich hoat ban quyen .
cscript OSPP/OSPP.VBS /actcid:%cid% >nul
cscript OSPP/OSPP.VBS /act >nul
cscript OSPP/OSPP.VBS /dstatus |find "LICENSED"
if %errorlevel%==0  (
@echo             == Da kich hoat ban quyen vinh vien ==
@echo %key% >KEY_Office.txt
pause >nul
exit
) else (
@echo     == Step 3 Not Vaid ! Kiem tra lai ==
goto nhapcidoff
)
goto begin














