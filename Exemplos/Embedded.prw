#include "protheus.ch"

/*/{Protheus.doc} EmbSql
Exemplo de utilização do Embedded SQL
@author Houston A. Santos
@since 29/11/2015
@version 1.0
@example u_zEmbedd()
/*/

User Function EmbSql()

	Local aArea := GetArea()
	
	// Construindo a consulta
	BeginSql Alias "SQL_SA1"
	 
		Select	
			A1_COD,
			A1_DESC
		FROM
			%table:SA1% SA1 
		WHERE
			SA1.%notDel%
			AND A1_MSBLQL != '1'			
	EndSql   
	
	// Percorrendo os registros
	While ! SQL_SA1->(EOF())
		ConOut("SQL_SA1: " + SQL_SA1->A1_COD + " " + SQL_SA1->A1_DESC)
		SQL_SA1->(DbSkip())
	EndDo
	
	SQL_SA1->(DbCloseArea())
	RestArea(aArea)
Return