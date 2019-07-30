#include 'Protheus.ch'


/*/{Protheus.doc} MT103SE2
    (Ponto de entrada para adicionar ao aCols do titulo SE2, este ponto deve ser usando em conjunto com MT100GE2)
    @type  Function
    @author Houston Santos
    @since 12/07/2019
    @version version
    @param param
    @return array
    @example
    (examples)
    @see (http://tdn.totvs.com/pages/releaseview.action?pageId=6085675)
/*/

User Function MT103SE2()

    Local aRet := {}

    // Adicinando o campo E2_CCUSTO ao aCols.
    If  MsSeek("E2_CCUSTO")   
        aadd(aRet,{Trim(X3Titulo()), SX3->X3_CAMPO, SX3->X3_PICTURE, SX3->X3_TAMANHO, SX3->X3_DECIMAL, "Ctb105CC() .And. A103VldCC()", SX3->X3_USADO, SX3->X3_TIPO, SX3->X3_F3, SX3->X3_CONTEXT, SX3->X3_CBOX, SX3->X3_RELACAO, ".T."}) 
    EndIf

    // Adicinando o campo E2_CODBAR ao aCols.
    If  MsSeek("E2_CODBAR")   
        aadd(aRet,{Trim(X3Titulo()), SX3->X3_CAMPO, SX3->X3_PICTURE, SX3->X3_TAMANHO, SX3->X3_DECIMAL, "", SX3->X3_USADO, SX3->X3_TIPO, SX3->X3_F3, SX3->X3_CONTEXT, SX3->X3_CBOX, SX3->X3_RELACAO, ".T."}) 
    EndIf

Return (aRet)