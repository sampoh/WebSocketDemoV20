//%attributes = {}

C_TEXT:C284($1; $info)

$info:=$1

CREATE RECORD:C68([serverLog:1])
[serverLog:1]datetime:2:=String:C10(Current date:C33; Internal date short:K1:7)+" "+String:C10(Current time:C178; HH MM SS:K7:1)
[serverLog:1]info:3:=$info
SAVE RECORD:C53([serverLog:1])
