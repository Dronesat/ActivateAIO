@echo off
title  Tien Ich cho Phan mem ActivateAIO
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
"files\maximizewindow.exe" "Administrator:   Tien Ich cho Phan mem ActivateAIO"
@echo                  ====================================== TIEN ICH ========================================]
@echo                  [           1. Cac ban Update cho phan mem - Cap nhap hang ngay           : An phim 20  ]
@echo                  [           2. Them shortcut phan mem vao menu chuot phai                 : An phim 21  ]
@echo                  [           3. Xoa shortcut phan mem khoi menu chuot phai                 : An phim 22  ] 
@echo                  ==========================================================================================
@echo                  ================================ KEY WINDOWS + OFFICE ====================================
@echo                  [           4. Key Windows 10 + Office 2016 Retail-MAK                                  ]
@echo                  [           5. Office_2016_Retail-VL_MAK_Keys                                           ]
@echo                  [           5. Retail_Key                                                               ]
@echo                  [           6. VOLUME_LICENSE_MAK_KEY                                                   ]
@echo                  [           7. Windows 10 Phone Activation MAK-RETAIL Keys                              ]
@echo                  ==========================================================================================

:begin
@echo.
set /p chon= + Lua chon cua ban la : [0-20] ?: 

if %chon% == 1 (
start Modules\Update\Software_Update.exe
goto begin
)

if %chon% == 2 (
START /WAIT REGEDIT /S "files\reg32.reg"
goto begin
)

if %chon% == 3 (
reg delete HKCR\Directory\Background\shell\ActivateAIO
goto begin
)

if %chon% == 4 (
start ListKey\Key_Windows_10Office_2016_Retail-MAK.txt
goto begin
)

if %chon% == 5 (
start Listkey\Office_2016_Retail-VL_MAK_Keys.txt
goto begin 
)

if %chon% == 6 (
start ListKey\Retail_Key.txts
goto begin
)

if %chon% == 7 (
start ListKey\VOLUME_LICENSE_MAK_KEY.txt
goto begin 
)

if %chon% == 8 (
start ListKey\Windows_10_Phone_Activation_MAK-RETAIL_Keys.txt
goto begin 
)