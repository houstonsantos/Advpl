#include "protheus.ch"

/*/{Protheus.doc} PE01NFESEFAZ
//TODO Descrição auto-gerada.
Ponto de Entrada para complementação das informações adicionais baseado na TES. 
@author Houston Santos
@since 02/10/2017
@children 1.0
@version 2.0
@type function
/*/

User Function PE01NFESEFAZ()

	Local aProd		:= PARAMIXB[1]
	Local cMensCli	:= PARAMIXB[2]
	Local cMensFis	:= PARAMIXB[3]
	Local aDest		:= PARAMIXB[4] 
	Local aNota   	:= PARAMIXB[5]
	Local aInfoItem	:= PARAMIXB[6]
	Local aDupl		:= PARAMIXB[7]
	Local aTransp	:= PARAMIXB[8]
	Local aEntrega	:= PARAMIXB[9]
	Local aRetirada	:= PARAMIXB[10]
	Local aVeiculo	:= PARAMIXB[11]
	Local aReboque	:= PARAMIXB[12]
	Local aNfVincRur:= PARAMIXB[13]
	Local aEspVol	:= PARAMIXB[14]
	//Local aNfVinc	:= PARAMIXB[15]
	Local aRetorno	:= {}
	Local cMsg		:= ""
	
	Aadd(aRetorno,aProd)
	Aadd(aRetorno,substr(cMensCli+Space(90),1,90)+U_XMLInfAdic(aProd))
	Aadd(aRetorno,cMensFis)
	Aadd(aRetorno,aDest)
	Aadd(aRetorno,aNota)
	Aadd(aRetorno,aInfoItem)
	Aadd(aRetorno,aDupl)
	Aadd(aRetorno,aTransp)
	Aadd(aRetorno,aEntrega)
	Aadd(aRetorno,aRetirada)
	Aadd(aRetorno,aVeiculo)
	Aadd(aRetorno,aReboque)
	Aadd(aRetorno,aNfVincRur)
	Aadd(aRetorno,aEspVol)
	//Aadd(aRetorno,aNfVinc)
	
Return aRetorno


/*/{Protheus.doc} XMLInfAdic
//TODO Descrição auto-gerada.
Ponto de Entrada para complementação das informações adicionais baseado na TES.
@author Houston Santos
@since 02/10/2017
@children 1.0
@version 1.0
@param aProd, array, descricao
@type function
/*/

// Informações Adicionais Específicas
User Function XMLInfAdic(aProd)
	
   	Local sRet := ""

	// TES Específico para Isenção de ICMS
	nTotImp  := 0
	nTotNota := 0
	
	For ix := 1 to Len(aProd)
	   If alltrim(aProd[ix][27]) == "530"
	      
	      // Valor do Imposto
	      nValImp := (aProd[ix][10]/0.82)*0.18
	      nTotImp += nValImp
	      
	      // Valor dos Itens com o TES especifico
	      nTotNota+= (aProd[ix][10]/0.82)
	      
		  If ix == 1
		      sRet += Substr(alltrim(Str(ix,2))+"o. ITEM VALOR DISPENSADO R$ "+alltrim(TRANSFORM( nValImp ,"@E 999,999,999.99"))+Space(90),1,90)
		  Else
		      sRet += Substr(alltrim(Str(ix,2))+"o. ITEM VALOR DISPENSADO R$ "+alltrim(TRANSFORM( nValImp ,"@E 999,999,999.99"))+Space(90),1,90)
		  Endif 
		     
	   Endif
	Next
	
	If alltrim(sRet) <> ""
	   sRet += "DESCONTO DO ICMS, CONFORME CONVÊNIO DE ICMS N° 73/2004 E DECRETO LEI N° 14876/91 E DECRETO N° 27541/2005, VALOR R$ "+alltrim(TRANSFORM( nTotNota ,"@E 999,999,999.99"))+", DESCONTO DE R$ "+alltrim(TRANSFORM( nTotImp ,"@E 999,999,999.99"))+" "
	Endif
	
Return sRet