#include 'protheus.ch'
#include 'parmtype.ch'
#include 'rwmake.ch'


/*/{Protheus.doc} M461SER
//TODO Descri��o auto-gerada.
@author Houston A. Santos
@since 26/07/2016
@version 1.0
@type function
/*/

User Function M461SER()
	Local aArea       := GetArea()
	Local aAreaSC5    := SC5->(GetArea())
	Local aAreaSC9    := SC9->(GetArea())
	Local aAreaSX5    := SX5->(GetArea())
	Local cTipoPedido := SC5->C5_TIPO
	Local cPedido	  := SC5->C5_NUM
	
	Local cPedidoSc9  := SC9->C9_PEDIDO
		
	Local nProNum 	  := 0	
	
	//Begin Transaction
	
		Do Case
		
			//Pedidos do tipo "N"(VENDA) ser� atribuido a s�rie 004
			Case cTipoPedido == "N"
				cSerie  := "004"
				cNumero := Alltrim(Posicione("SX5",1,FWxFilial("SX5")+"01"+"004","X5_DESCRI"))
				nProNum := Val(cNumero) + 1
																
				ReclocK("SX5", .F.)
					X5_DESCRI  := Alltrim(StrZero(nProNum, 9))
					X5_DESCSPA := Alltrim(StrZero(nProNum, 9))
					X5_DESCENG := Alltrim(StrZero(nProNum, 9))
				SX5->(MsUnlock())
				
				Alert(cSerie + " " + cNumero + " " + cTipoPedido + " " + cPedido + " " + cPedidoSc9)
			
			//Pedidos do tipo "D"(DEVOLU��O DE COMPRA) ser� atribuido a s�rie 005								
			Case cTipoPedido == "D"
				cSerie  := "005"
				cNumero := Alltrim(Posicione("SX5",1,FWxFilial("SX5")+"01"+"005","X5_DESCRI"))
				nProNum := Val(cNumero) + 1
				
				ReclocK("SX5", .F.)
					X5_DESCRI  := Alltrim(StrZero(nProNum, 9))
					X5_DESCSPA := Alltrim(StrZero(nProNum, 9))
					X5_DESCENG := Alltrim(StrZero(nProNum, 9))
				SX5->(MsUnlock())
				
				Alert("NF-e " + cSerie + " " + cNumero + " " + cTipoPedido)
			
			//Pedidos do tipo "B","C","I","P"(COMPLEMENTOS) ser� atribuido a s�rie 006	
			Case cTipoPedido == "B" .Or. cTipoPedido == "C" .Or. cTipoPedido == "I" .Or. cTipoPedido == "P" 
				cSerie  := "006"
				cNumero := Alltrim(Posicione("SX5",1,FWxFilial("SX5")+"01"+"006","X5_DESCRI"))
				nProNum := Val(cNumero) + 1
				
				ReclocK("SX5", .F.)
					X5_DESCRI  := Alltrim(StrZero(nProNum, 9))
					X5_DESCSPA := Alltrim(StrZero(nProNum, 9))
					X5_DESCENG := Alltrim(StrZero(nProNum, 9))
				SX5->(MsUnlock())
				
				Alert("NF-e " + cSerie + " " + cNumero + " " + cTipoPedido)
			
			//Caso o pedido seja de um tipo n�o especificado acima
			OtherWise
				Alert("N�o houve uma classifica��o para o tipo do pedido informado")
				
		EndCase
	
		//DisarmTransaction()
	//End Transaction
		
	RestArea(aAreaSC5)
	RestArea(aAreaSC9)
	RestArea(aAreaSX5)
	RestArea(aArea)
Return




