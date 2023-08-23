//%attributes = {}

var $1 : Integer

var $wsid : Integer

$wsid:=$1

READ WRITE:C146([client:2])
QUERY:C277([client:2]; [client:2]wsid:2=$wsid)
If (Records in selection:C76([client:2])>0)
	DELETE RECORD:C58([client:2])
End if 

READ ONLY:C145([client:2])
UNLOAD RECORD:C212([client:2])
