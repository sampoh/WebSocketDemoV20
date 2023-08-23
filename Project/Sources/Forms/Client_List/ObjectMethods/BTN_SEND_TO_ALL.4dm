
var $ptr : Pointer
var $MSG : Text

If (Form event code:C388=On Clicked:K2:4)
	$ptr:=OBJECT Get pointer:C1124(Object named:K67:5; "MSG")
	$MSG:=$ptr->
	If ($MSG#"")
		SendToAll($MSG)
	End if 
End if 
