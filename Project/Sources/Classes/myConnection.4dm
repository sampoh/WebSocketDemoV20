
Function onMessage($ws : 4D:C1709.WebSocketConnection; $message : Object)
	// すべてのチャットクライアントにメッセージを送信
	//This.broadcast($ws; $message.data)  //チャットではないので不要
	
	APPEND TO ARRAY:C911(<>alWSID; $ws.id)
	APPEND TO ARRAY:C911(<>atDATA; $message.data)
	
Function onOpen($ws : 4D:C1709.WebSocketConnection; $message : Object)
	
	var $uuid : Text
	
	$uuid:=generateUuid
	
	While (preSaveSession($uuid))
		$uuid:=generateUuid
	End while 
	
	saveSession($ws.id; $uuid)
	
	// 新規接続ユーザーにメッセージを送信
	$ws.send("Connected. Your session id is '"+$uuid+"'.")
	// その他の接続済チャットクライアントに "新規クライアントが接続しました" メッセージを送信
	
	//This.broadcast($ws; "New client connected.")  //チャットではないので不要
	
Function onTerminate($ws : 4D:C1709.WebSocketConnection; $message : Object)
	// その他の接続中クライアントに "クライアントが切断されました" メッセージを送信
	//This.broadcast($ws; "A client disconnected.")//チャットではないので不要
	
	removeSession($ws.id)
	
Function broadcast($ws : 4D:C1709.WebSocketConnection; $message : Text)
	var $client : 4D:C1709.WebSocketConnection
	// すべてのチャットクライアントにメッセージを送信
	For each ($client; $ws.wss.connections)
		// id がカレント接続ではないことをチェック
		If ($client.id#$ws.id)
			$client.send($message)
		End if 
	End for each 
	