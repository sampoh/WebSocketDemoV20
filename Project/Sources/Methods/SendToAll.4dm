//%attributes = {}

var $1 : Text
var $message : Text

$message:=$1

CALL WORKER:C1389("WS_Server"; "SendToAll_Sub"; $message)



