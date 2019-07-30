#include 'protheus.ch'


/*/{Protheus.doc} F470ALLF
    (Permite a sinalização de que deve ser feito o tratamento do extrato utilizando o filtro da filial corrente)
    @type  Function
    @author Houston Santos
    @since 01/07/2019
    @version version
    @param param
    @return return
    @example
    (examples)
    @see (http://tdn.totvs.com/pages/releaseview.action?pageId=6071573)
/*/

User Function F470ALLF()

    Local lAllFil := ParamIxb[1]

Return(.T.)