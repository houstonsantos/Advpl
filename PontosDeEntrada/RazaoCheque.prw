#include 'protheus.ch'
#include 'parmtype.ch'

/*/{Protheus.doc} F080BENEF
//TODO Atribui Razão Social como beneficiário
@author Houston Santos
@since 25/08/2016
@version 1.0
@type function
/*/

User Function F080BENEF()
	
	Local aArea := GetArea()
	Local cBeneficiario := Padr(SA2->A2_NOME,TamSx3("EF_BENEF")[1])
	RestArea(aArea)
	
Return cBeneficiario