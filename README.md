# Advpl 

 <p align="justify">&nbsp;&nbsp;&nbsp;&nbsp; Neste reposit�rio compartilho um pouco da minha experi�ncia como Analista, Desenvolvedor e Coordenador com o <b>AdvPL</b> da <b>TOTVS</b>, maior sistema ERP da Am�rica Latina, voc� encontra exemplo dos mais diversos, usando fun��es, classes e MVC,para auxiliar estudos da linguagem e analistas que buscam solu��es.</p>
 
 * **Exemplos** - Fun��es para manipula��o de dados do Banco.
	 * Embedded
     * MsExecAuto
     * RecLock
     * TCQuery
     * DbSeek
  
 * **Pontos de Entradas** - Usado para fazer acesso a informa��es e manipulalas em tempo de execu��o.
     * **F080BENEF** - Subistitui o nome do benefici�rio na impress�o do cheque do nome fantasia(A2_NREDUZ) para raz�o social(A2_NOME).
     * **F470ALLF** - Permite vizualizar extrato banc�rio de forma consolidada para usu�rios que n�o tenham permiss�o nas empresas e que tenham o saldo compartilhado SE8.
     * **M460FIM** - Executado na prepara��o do documento de sa�da para manipula��o das informa��es, neste exemplo alimenta a tabela SE1 com informa��es de dois campos do tipo data(compet�ncia) utilizado no pedido de venda, C5_XCOMIN -> E1_XCOMIN e C5_XCOMFI -> E1_XCOMFI.
     * **MA080MNU** - Abilita a op��o c�piar TES no menu outras a��es.
     * **MT100GE2** - Executo ap�s a classifica��o do documento, utilizado para manipula informa��es do tituloa pagar, neste exemplo levo o centro de custo e c�digo de barras informado. O centro de custo s� ser� levado em casos em que sejam iguais para todos os itens ou informado na duplicata, em casos de diferen�a nos itens, n�o levara pois neste caso deve-se se realizar o rateio. Deve-se utilizar em comjunto com o MT103SE2.
     * **MT103IPC** - Manipula o aCols do pedido de venda para preenchimento da descri��o do item na importa��o do pedido, pois para este caso gatilho n�o funciona.
     * **MT103SE2** - Manipula o aCols da SE2 utilizado no documento de entrada, executado em conjunto com o MT100GE2.
     * **PE01NFESEFAZ** - Manipula as informa��es da nota antes de montar a DANFE, evitando de customizar o DANFEII ou DANFEIII. Neste exemplo realizo a quebra da mensagem adicional e tambem adiciono informa��es por TES, os campos F2_MENNOTA e C5_MENNOTA devem ter o mesmo tamanho.