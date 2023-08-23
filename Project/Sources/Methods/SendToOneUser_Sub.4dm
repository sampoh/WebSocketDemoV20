//%attributes = {}

var $1 : Integer
var $wsid : Integer
var $2 : Text
var $message : Text

var $conn : Collection

$wsid:=$1
$message:=$2

$conn:=wss.connections

var $client : 4D:C1709.WebSocketConnection

For each ($client; wss.connections)
	If ($client.id=$wsid)
		$client.send($message)
	End if 
End for each 

