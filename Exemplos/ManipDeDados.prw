#include "protheus.ch"

/*/{Protheus.doc} zBanco
Exemplo de manipula��o de Banco de Dados via AdvPL
@author Houston A. Santos
@since 15/11/2015
@version 1.0
@example u_zBanco()
/*/

User Function zBanco()

	Local aArea	  := GetArea()
	Local aAreaB1 := SB1->(GetArea())
	Local cMens	  := ""
	
	//Se a tabela j� estiver posicionada
	If Select("SB1") > 0
		MsgStop("Tabela SB1 j� est� aberta!", "Aten��oo")
	EndIf
	
	//Selecionando a tabela de produtos
	DbSelectArea("SB1")
	SB1->(DbSetOrder(1)) // B1_FILIAL+B1_COD
	SB1->(DbGoTop())
	
	//Posicionando no produto de c�digo F00002
	If SB1->(DbSeek(FWxFilial("SB1") + "F00002"))
		Alert(SB1->B1_DESC)
	EndIf
	
	//Agora, percorro todos os registros e adiciono a descri��o em uma vari�vel
	SB1->(DbGoTop())
	While !SB1->(EOF())
		cMens += Alltrim(SB1->B1_DESC)+";"+Chr(13)+Chr(10)
		SB1->(DbSkip())
	EndDo
	
	//Mostrando a mensagem
	Aviso('Aten��o', cMens, {'OK'}, 03)
	
	RestArea(aAreaB1)
	RestArea(aArea)
Return