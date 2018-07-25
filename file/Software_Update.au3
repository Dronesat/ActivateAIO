#include <Core.au3>
AutoItSetOption("TrayMenuMode",1)

#pragma compile(Icon, "Images\Update.ico")
#pragma compile(FileDescription, Software Update For Active Program)
#pragma compile(ProductName, Software Update)
#pragma compile(ProductVersion, 1.0)
#pragma compile(FileVersion, 1.0)
#pragma compile(LegalCopyright, © Minh Hieu Le)
;#pragma compile(Out, Software_Update.exe)

#include <AVIConstants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Software Update", 274, 173, 192, 124)
$Update = GUICtrlCreateButton("Update", 32, 24, 129, 49)
$Web = GUICtrlCreateButton("Visit Product Page", 32, 88, 209, 41)
$Label1 = GUICtrlCreateLabel("Coded by Minh Hieu Le", 8, 144, 115, 17)
$Video = GUICtrlCreateAvi("C:\Users\minh hieu le\Desktop\Project\UpdateAVI.avi", -1, 192, 24, 32, 32)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Update
			GUICtrlSetData($Update,"Please wait...")
			If Update() Then
			   $Download = (MsgBox(1,"Software","Update me now?")==1)
			   If $Download Then ShellExecute($urlDownload)
			Else
			   MsgBox(0,"Software Update","No update was found!")
			EndIf
			GUICtrlSetData($Update,"Check for update")
		Case $Web
			ShellExecute($urlWebpage)

	EndSwitch
WEnd

