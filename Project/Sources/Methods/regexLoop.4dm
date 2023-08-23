//%attributes = {}
//「Match regex」を使用してマッチした文字列を抜き取る処理

//第1引数（必須）：処理対象テキスト【テキスト型】
//第2引数（必須）：正規表現【テキスト型】
//第3引数（任意）：抜き取りループ処理の有無【ブール型】
//第4引数（任意）：戻り値テキスト配列へのポインタ【ポインタ型】
//戻り値：戻り値テキスト【テキスト型】

C_TEXT:C284($0; $vtResult)
C_TEXT:C284($1; $text)
C_TEXT:C284($2; $pattern)
C_BOOLEAN:C305($3; $cutLoopFlg)
C_POINTER:C301($4)

$text:=$1
$pattern:=$2
If (Count parameters:C259>=3)
	$cutLoopFlg:=$3
Else 
	$cutLoopFlg:=False:C215
End if 

C_BOOLEAN:C305($match)
C_LONGINT:C283($searchPos; $targetPos; $targetLength)
C_TEXT:C284($wkText)
ARRAY TEXT:C222($atResult; 0)

$vtResult:=""

If ($cutLoopFlg)
	//ループバージョン
	$searchPos:=1
	$match:=True:C214
	While ($match)
		$match:=Match regex:C1019($pattern; $text; $searchPos; $targetPos; $targetLength)
		If ($match)
			$wkText:=Substring:C12($text; $targetPos; $targetLength)
			If ($wkText#"")
				APPEND TO ARRAY:C911($atResult; $wkText)
				$vtResult:=$vtResult+$wkText
			End if 
			$searchPos:=$targetPos+$targetLength
		End if 
	End while 
	
Else 
	//非ループバージョン
	$match:=Match regex:C1019($pattern; $text; 1; $targetPos; $targetLength)
	If ($match)
		$wkText:=Substring:C12($text; $targetPos; $targetLength)
		If ($wkText#"")
			APPEND TO ARRAY:C911($atResult; $wkText)
			$vtResult:=$vtResult+$wkText
		End if 
	End if 
End if 

If (Count parameters:C259>=4)
	COPY ARRAY:C226($atResult; $4->)
End if 

$0:=$vtResult
