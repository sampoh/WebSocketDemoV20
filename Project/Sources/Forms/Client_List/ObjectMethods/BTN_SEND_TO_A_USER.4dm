
var $ptr01 : Pointer
var $ptr02 : Pointer
var $MSG : Text
var $accept : Boolean
var $wsid : Integer
var $uuid : Text
var $recs : Integer

$accept:=(Form event code:C388=On Clicked:K2:4)

If ($accept)
	$ptr01:=OBJECT Get pointer:C1124(Object named:K67:5; "MSG")
	$MSG:=$ptr01->
	$accept:=($MSG#"")
End if 

If ($accept)
	$recs:=Records in set:C195("$selected_client")
	$accept:=($recs>0)
	If (Not:C34($accept))
		ALERT:C41("Select a client.")
	End if 
End if 

If ($accept)
	
	CREATE SET:C116([client:2]; "$current_client")
	
	USE SET:C118("$selected_client")
	$wsid:=[client:2]wsid:2
	$uuid:=[client:2]uuid:3
	
	USE SET:C118("$current_client")
	CLEAR SET:C117("$current_client")
	
	$accept:=($uuid#"")
	
End if 

If ($accept)
	SendToOneUser($wsid; $MSG)
End if 
