﻿B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	
	Private ASNumberProgressBar1 As ASNumberProgressBar
	Private ASNumberProgressBar2 As ASNumberProgressBar
End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("frm_main")
	B4XPages.SetTitle(Me,"AS NumberProgressBar Example")
	
	ASNumberProgressBar2.TextFont = xui.CreateDefaultBoldFont(15)

	For i = 0 To 100 -1
		ASNumberProgressBar1.IncrementProgressBy(1)
		Sleep(50)
	Next
	
	For i = 0 To 100 -1
		ASNumberProgressBar1.DecrementProgressBy(1)
		Sleep(50)
	Next

	For i = 0 To ASNumberProgressBar2.BarMax -1
		ASNumberProgressBar2.IncrementProgressBy(1)
		Sleep(25)
	Next
	
End Sub
