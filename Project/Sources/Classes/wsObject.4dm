
Function onConnection($wss : Object; $event : Object) : Object
	
	If (VerifyClient($event.request.remoteAddress))
		// VerifyAddress メソッドはクライアントのアドレスを検証します
		// 返される myConnection オブジェクトは、この接続に関連する 
		// 4D.WebSocketConnection オブジェクトをインスタンス化するために
		// 4D によって使用されます
		return cs:C1710.myConnection.new()
		// connectionHandler オブジェクト参照
	Else 
		// 接続解除
		return Null:C1517
	End if 
	
Function onOpen($wss : Object; $event : Object)
	LOG_Server("サーバ起動")
	
Function onTerminate($wss : Object; $event : Object)
	LOG_Server("サーバ終了")
	
Function onError($wss : Object; $event : Object)
	LOG_Server("エラー: "+$event.errors.first().message)
	
