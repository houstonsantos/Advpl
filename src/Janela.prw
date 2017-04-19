#include 'protheus.ch'
#include 'parmtype.ch'
#include 'topconn.ch'
#include 'totvs.ch'


/*/{Protheus.doc} Janela
//TODO Descrição auto-gerada.
@author Houston Santos
@since 16/12/2016
@version 1.0.1
@type function 
/*/


User Function Janela()
	// cria diálogo
	Local oDlg
	Local oTSay1
	Local oTSay2
	Local oTSay3
	Local oTGet1
	Local oTGet2
	Local oTGet3
	Private cCodPlan := Space(3)
	Private cArqPlan := Space(20)
	Private cArqNovo := Space(20)
	//Private cGetFile := Space(100)
	//Private bFileOpen := {|cGetFile|('txt|*.txt|', OemToAnsi("Selecione um diretório..."), 1, 'c:\', .F., nOR(GETF_LOCALHARD, GETF_NETWORKDRIVE, GETF_RETDIRECTORY), .F., .T.)}
	//Private cFileOpen := cGetFile('txt|*.txt|', OemToAnsi("Selecione um diretório..."), 1, 'c:\', .F., nOR(GETF_LOCALHARD, GETF_NETWORKDRIVE, GETF_RETDIRECTORY), .F., .T.)
	
	oDlg := MSDialog():New(10,10,400,400,'Integração Coparticipação',,,,,,,,,.T.)
	
	oTSay1 := tSay():New(20,10,{||'Código do Plano:'    },oDlg,,,,,,.T.,,,100,20)
	oTSay2 := tSay():New(40,10,{||'Arq. Plano de Saúde:'},oDlg,,,,,,.T.,,,100,20)
	oTSay3 := tSay():New(60,10,{||'Dir. Novo Arquivo:'  },oDlg,,,,,,.T.,,,100,20)
	
	oTGet1 := TGet():New(18,75,{||cCodPlan},oDlg,020,009,"@!",,,,,,,.T.,,,,,,,,,,cArqPlan,,,,.T.,.T.,,,,,,)
	oTGet2 := TGet():New(38,75,{||cArqPlan},oDlg,096,009,"@!",,,,,,,.T.,,,,,,,,,,cArqPlan,,,,,,,,,,,)
	oTGet3 := TGet():New(58,75,{||cArqNovo},oDlg,096,009,"@!",,,,,,,.T.,,,,,,,,,,cArqNovo,,,,,,,,,,,)
	 
		
	// ativa diálogo centralizado
	oDlg:Activate(,,,.T.,{||},,)
Return


 
		