//%attributes = {}
//サーバ側から送信するデモを起動

ARRAY LONGINT:C221(<>alWSID; 0)
ARRAY TEXT:C222(<>atDATA; 0)

var $process : Integer

$process:=New process:C317("START_Demo_Sub"; 0; "START_Demo_Sub")
