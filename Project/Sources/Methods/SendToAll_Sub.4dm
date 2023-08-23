//%attributes = {}

C_TEXT:C284($1; $message)

C_COLLECTION:C1488($conn)

$message:=$1

$conn:=wss.connections

var $client : 4D:C1709.WebSocketConnection

For each ($client; wss.connections)
	$client.send($message)
End for each 

