//%attributes = {}

var $0 : Text
var $uuid : Text

$uuid:=Replace string:C233(Replace string:C233(String:C10(Current date:C33; Internal date short:K1:7)+String:C10(Current time:C178; HH MM SS:K7:1); "/"; ""); ":"; "")+\
Lowercase:C14(Generate UUID:C1066)

$0:=$uuid
