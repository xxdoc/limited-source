Attribute VB_Name = "modCodeEdit"
'   Copyright (c) 2006 Joshua Bendig
'   This file is part of Asgard.
'
'    Asgard is free software; you can redistribute it and/or modify
'    it under the terms of the GNU General Public License as published by
'    the Free Software Foundation; either version 2 of the License, or
'    (at your option) any later version.
'
'    Asgard is distributed in the hope that it will be useful,
'    but WITHOUT ANY WARRANTY; without even the implied warranty of
'    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'    GNU General Public License for more details.
'
'    You should have received a copy of the GNU General Public License
'    along with Asgard; if not, write to the Free Software
'    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

Public Type WMcolors
  bgClr As Long
  frClr As Long
  fntProp As Long
End Type

Public ClrData(19) As WMcolors
Public AFileName As String

Public Sub ResetAllEditVals()

'Save the Default values to the registry
SaveSetting App.EXEName, "EditOptions", "c0a", "0"
SaveSetting App.EXEName, "EditOptions", "c0b", "65535"
SaveSetting App.EXEName, "EditOptions", "c0c", "0"

SaveSetting App.EXEName, "EditOptions", "c1a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c1b", "32768"
SaveSetting App.EXEName, "EditOptions", "c1c", "2"

SaveSetting App.EXEName, "EditOptions", "c2a", "0"
SaveSetting App.EXEName, "EditOptions", "c2b", "16777215"
SaveSetting App.EXEName, "EditOptions", "c2c", "0"

SaveSetting App.EXEName, "EditOptions", "c3a", "0"
SaveSetting App.EXEName, "EditOptions", "c3b", "16777215"
SaveSetting App.EXEName, "EditOptions", "c3c", "0"

SaveSetting App.EXEName, "EditOptions", "c4a", "0"
SaveSetting App.EXEName, "EditOptions", "c4b", "16777152"
SaveSetting App.EXEName, "EditOptions", "c4c", "0"

SaveSetting App.EXEName, "EditOptions", "c5a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c5b", "16711680"
SaveSetting App.EXEName, "EditOptions", "c5c", "1"

SaveSetting App.EXEName, "EditOptions", "c6a", "0"
SaveSetting App.EXEName, "EditOptions", "c6b", "8421504"
SaveSetting App.EXEName, "EditOptions", "c6c", "0"

SaveSetting App.EXEName, "EditOptions", "c7a", "8421504"
SaveSetting App.EXEName, "EditOptions", "c7b", "16777215"
SaveSetting App.EXEName, "EditOptions", "c7c", "0"

SaveSetting App.EXEName, "EditOptions", "c8a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c8b", "0"
SaveSetting App.EXEName, "EditOptions", "c8c", "0"

SaveSetting App.EXEName, "EditOptions", "c9a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c9b", "255"
SaveSetting App.EXEName, "EditOptions", "c9c", "0"

SaveSetting App.EXEName, "EditOptions", "c10a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c10b", "16711680"
SaveSetting App.EXEName, "EditOptions", "c10c", "0"

SaveSetting App.EXEName, "EditOptions", "c11a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c11b", "12583104"
SaveSetting App.EXEName, "EditOptions", "c11c", "0"

SaveSetting App.EXEName, "EditOptions", "c12a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c12b", "128"
SaveSetting App.EXEName, "EditOptions", "c12c", "1"

SaveSetting App.EXEName, "EditOptions", "c13a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c13b", "255"
SaveSetting App.EXEName, "EditOptions", "c13c", "0"

SaveSetting App.EXEName, "EditOptions", "c14a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c14b", "16711680"
SaveSetting App.EXEName, "EditOptions", "c14c", "0"

SaveSetting App.EXEName, "EditOptions", "c15a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c15b", "0"
SaveSetting App.EXEName, "EditOptions", "c15c", "1"

SaveSetting App.EXEName, "EditOptions", "c16a", "16777215"
SaveSetting App.EXEName, "EditOptions", "c16b", "0"
SaveSetting App.EXEName, "EditOptions", "c16c", "0"

SaveSetting App.EXEName, "EditOptions", "c17a", "0"
SaveSetting App.EXEName, "EditOptions", "c17b", "16777215"
SaveSetting App.EXEName, "EditOptions", "c17c", "0"

SaveSetting App.EXEName, "EditOptions", "c18a", "0"
SaveSetting App.EXEName, "EditOptions", "c18b", "8388736"
SaveSetting App.EXEName, "EditOptions", "c18c", "0"

SaveSetting App.EXEName, "EditOptions", "c19a", "0"
SaveSetting App.EXEName, "EditOptions", "c19b", "8388736"
SaveSetting App.EXEName, "EditOptions", "c19c", "0"

SaveSetting App.EXEName, "EditOptions", "Saved", "1"

End Sub
Public Sub GetEditColors()
On Error GoTo EH
Dim i As Integer
'Get the color Values
For i = 0 To 19
ClrData(i).bgClr = CLng(GetSetting(App.EXEName, "EditOptions", "c" & i & "a", "0"))
ClrData(i).frClr = CLng(GetSetting(App.EXEName, "EditOptions", "c" & i & "b", "0"))
ClrData(i).fntProp = CLng(GetSetting(App.EXEName, "EditOptions", "c" & i & "c", "0"))
Next i
Exit Sub
EH:
End Sub
Public Function txtProp(num As Long) As Long
  Select Case num
    Case 0
      txtProp = 0
      Exit Function
    Case 1
      txtProp = 1
      Exit Function
    Case 2
      txtProp = 2
      Exit Function
    Case 3
      txtProp = 3
      Exit Function
    Case 4
      txtProp = 4
      Exit Function
 End Select
End Function


