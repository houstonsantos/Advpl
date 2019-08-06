#include "protheus.ch"

/*/{Protheus.doc} ManiBan
Exemplo de manipulação de Banco de Dados via AdvPL
@author Houston A. Santos
@since 15/11/2015
@version 1.0
@example u_ManiBan()
/*/

User Function ManiBan()

	Local aArea	  := GetArea()
	Local aAreaA1 := SA1->(GetArea())
	Local cMens	  := ""
	
	// Verifica se a tabela já está aberta.
	If Select("SA1") > 0
		MsgStop("Tabela SA1 já está aberta!", "Atenção")
	EndIf
	
	// Selecionando a tabela de cleentes.
	DbSelectArea("SA1")
	SA1->(DbSetOrder(1))
	SA1->(DbGoTop())
	
	// Posicionando no cliente 0000001.
	If SA1->(DbSeek(FWxFilial("SA1") + "000001"))
		Alert(SA1->A1_DESC)
	EndIf
	
	// Percorrendo alias.
	SA1->(DbGoTop())
	While ! SA1->(EOF())
		Alert(SA1->A1_NOME)
		SA1->(DbSkip())
	EndDo
	
	RestArea(aAreaA1)
	RestArea(aArea)
Return