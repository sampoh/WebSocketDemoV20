
var $ptr : Pointer

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		$ptr:=OBJECT Get pointer:C1124(Object named:K67:5; "MSG")
		$ptr->:="TEST MESSAGE"
		
		LoadAllClients
		
End case 
