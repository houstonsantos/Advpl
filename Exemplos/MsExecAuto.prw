#include "protheus.ch"
#include "rwmake.ch"
#include "tbiconn.ch"

/*/{Protheus.doc} ExecAut
Exemplo de gravasão via ExecAuto
@author Houston A. Santos
@since 29/11/2015
@version 1.0
@example u_ExecAut()
/*/

User Function ExecAut()

	Local aArea	 := GetArea()
	Local aVetor := {}
	Private lMsErroAuto	:= .F.
	// Private lMSHelpAuto	 := .T.
	// Private lAutoErrNoFile := .T.
	
	// Adicionando dados no produto para testar inclusão
	aVetor := {{"B1_COD",	  "99999Z",		   nil},;
			   {"B1_DESC",	  "PRODUTO TESTE", nil},;
			   {"B1_TIPO",	  "P+",			   nil},;
			   {"B1_UM",	  "UN",			   nil},;
			   {"B1_LOCPAD",  "01",			   nil},;
			   {"B1_PICM",	  0,			   nil},;
			   {"B1_IPI",	  0,			   nil},;
			   {"B1_CONTRAT", "N",			   nil},;
			   {"B1_LOCALIZ", "N",			   nil};}
	
	// Chamando o cadastro de produtos de forma automática
	MSExecAuto({|x,y| Mata010(x,y)},aVetor,3)
		
	// Se houve erro
	If (lMsErroAuto)
			
		// Caso queira gravar o log em arquivo texto, não se deve usar a rotina MostraErro, mas sim o trecho abaixo:
		aLogAuto := {}
		cLogTxt	 := ""
			
		// Pegando log do ExecAuto
		aLogAuto := GetAutoGRLog()
			
		// Percorrendo o Log
		For nAux := 1 To Len(aLogAuto)
			cLogTxt += aLogAuto[nAux] + Chr(13)+Chr(10)
		Next
		
		// Mostrando a janela de erro
		MostraErro()
	EndIf
	             
	RestArea(aArea)
Return