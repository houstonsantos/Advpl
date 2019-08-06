#include "protheus.ch"

/*/{Protheus.doc} GraRec
Exemplo de gravação de dados com RecLock
@type function
@author Houston A. Santos
@since 25/11/2015
@version 1.0
@example u_GraRec()
/*/

User Function GraRec()

	Local aArea := GetArea()
	// Abrindo a tabela de cliente.
	DbSelectArea('SA1')
	SA1->(DbSetOrder(1)) 
	SA1->(DbGoTop())
	
	// Se conseguir posicionar no produto 000001.
	If SA1->(DbSeek(FWxFilial('SA1') + '000001'))
		// Quando passo .F. no RecLock, o registro fica travado para Alteração e .T. para inclusão.
		RecLock('SA1', .F.)
			A1_DESC := "NOME_AQUI"
		SA1->(MsUnlock())
	EndIf
	
	RestArea(aArea)
Return