
#RequireAdmin

#include <Date.au3>
#include <String.au3>

Global $version = 1
Global $urlWebpage = "https://www.facebook.com/Active-Windows-v%C3%A0-Office-m%E1%BB%8Di-phi%C3%AAn-b%E1%BA%A3n-955710487852713/?ref=aymt_homepage_panel"
Global $urlDownload = "https://drive.google.com/folderview?id=0B2aL_AX3WVI_SFIyWGtNQVg5U1U&usp=sharing"

Func Update()
   Local $info = InetRead("http://pastebin.com/raw/RBVv50nF",1)
   If $info <> "" Then
	  Local $latest = _StringBetween(BinaryToString($info),"<version>","</version>")[0]
	  Return ($latest > $version)
   Else
	  Return 0
   EndIf
EndFunc

