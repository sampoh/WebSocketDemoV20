//%attributes = {}

//セッションクリア
READ WRITE:C146([client:2])
TRUNCATE TABLE:C1051([client:2])
SET DATABASE PARAMETER:C642([client:2]; Table sequence number:K37:31; 0)

//サーバログクリア
READ WRITE:C146([serverLog:1])
TRUNCATE TABLE:C1051([serverLog:1])
SET DATABASE PARAMETER:C642([serverLog:1]; Table sequence number:K37:31; 0)

//WSサーバ起動
var $handler : cs:C1710.wsObject
$handler:=cs:C1710.wsObject.new()
CALL WORKER:C1389("WS_Server"; Formula:C1597(wss:=4D:C1709.WebSocketServer.new($handler)))

