//%attributes = {}

var $1 : Integer
var $wsid : Integer
var $2 : Text
var $message : Text

$wsid:=$1
$message:=$2

CALL WORKER:C1389("WS_Server"; "SendToOneUser_Sub"; $wsid; $message)



