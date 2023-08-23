//%attributes = {}

var $0 : Boolean
var $1 : Text

var $visible : Boolean
var $uuid : Text

$uuid:=$1

QUERY:C277([client:2]; [client:2]uuid:3=$uuid)

$visible:=(Records in selection:C76([client:2])>0)

$0:=$visible
