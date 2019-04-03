#include "protheus.ch"

/*/{Protheus.doc} zGravacao
Exemplo de gravas�o de dados via RecLock
@type function
@author Houston A. Santos
@since 25/11/2015
@version 1.0
@example u_zGravacao()
/*/

User Function zGravacao()

	Local aArea := GetArea()
	
	// Abrindo a tabela de produtos e setando o �ndice
	DbSelectArea('SB1')
	SB1->(DbSetOrder(1)) 
	SB1->(DbGoTop())
	
	// Iniciando a transa��o, tudo dentro da transa��o, pode ser desarmado (cancelado)
	Begin Transaction
		MsgInfo("Antes da Altera��o!", "Aten��o")
		
		// Se conseguir posicionar no produto de c�digo E00001
		If SB1->(DbSeek(FWxFilial('SB1') + 'E00001'))
			// Quando passo .F. no RecLock, o registro  travado para Altera��o
			RecLock('SB1', .F.)
				B1_X_CAMPO := "XXX"
				B1_DESC := SB1->B1_DESC + "."
			SB1->(MsUnlock())
			
			/*
				Ao inv�s de s� utilizar o :=, pode se tamb�m utilizar o comando Replace:
				Replace [CAMPO] With [CONTEUDO]
				Replace B1_X_CAMPO With "XXX"
			*/
		EndIf
		
		// Quando passo .T. no RecLock, o registro � travado para Inclus�o
		RecLock('SB1', .T.)
			B1_FILIAL := FWxFilial('SB1')
		SB1->(MsUnlock())
		
		MsgInfo("Ap�s a Altera��o!", "Aten��o")
		
		// Ao desarmar a transa��o, toda a manipula��o de dados � cancelada
		DisarmTransaction()
	End Transaction
	
	// Se conseguir posicionar no produto de c�digo E00001
	If SB1->(DbSeek(FWxFilial('SB1') + 'E00001'))
		// Quando fa�o a altera��o fora de uma transa��o, automaticamente os dados s�o salvos
		RecLock('SB1', .F.)
			B1_DESC := Alltrim(SB1->B1_DESC) + "."
		SB1->(MsUnlock())
	EndIf
	
	RestArea(aArea)
Return