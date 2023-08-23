//%attributes = {}

var $1 : Integer
var $2 : Text

var $wsid : Integer
var $uuid : Text

$wsid:=$1
$uuid:=$2

CREATE RECORD:C68([client:2])
[client:2]wsid:2:=$wsid
[client:2]uuid:3:=$uuid
SAVE RECORD:C53([client:2])
UNLOAD RECORD:C212([client:2])
