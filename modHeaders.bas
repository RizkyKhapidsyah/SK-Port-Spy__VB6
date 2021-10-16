Attribute VB_Name = "modHeaders"

Option Explicit
Public Function head(OS As Integer, CL As Integer)
Dim OpSys As String, WebClient As String, rtnStr As String
Select Case OS 'Determine OS selected.
    Case 0: OpSys = "Windows 95"
    Case 1: OpSys = "Windows 98"
    Case 2: OpSys = "Windows 2000"
    Case 3: OpSys = "Windows XP"
End Select
Select Case CL 'Determine web client selected.
    Case 4: WebClient = "MSIE 6.0"
    Case 5: WebClient = "Netscape 6.2"
    Case 6: WebClient = "Opera 5.01"
    Case 7: WebClient = "Mozilla 0.9.5"
End Select

'//Build Web Client header
rtnStr = "GET http://" & frmCon.txtAddr.Text & "/ HTTP/1.0" & vbCrLf _
        & "Accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg" & vbCrLf _
        & "Accept-Language: en-us" & vbCrLf _
        & "Content-Encoding: gzip, deflate" & vbCrLf _
        & "User-Agent: Mozilla/4.0 (compatible; " & WebClient & "; " & OpSys & "; " & "Port Spy 1.0)" & vbCrLf _
        & "Host: " & frmCon.txtAddr.Text & vbCrLf _
        & "Connection: Close" & vbCrLf & vbCrLf
head = rtnStr
End Function
