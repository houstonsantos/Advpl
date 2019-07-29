# Advpl 

 <p align="justify">&nbsp;&nbsp;&nbsp;&nbsp; Neste repositório compartilho um pouco da minha experiência como Analista, Desenvolvedor e Coordenador com o <b>AdvPL</b> da <b>TOTVS</b>, maior sistema ERP da América Latina, você encontra exemplo dos mais diversos, usando funções, classes e MVC,para auxiliar estudos da linguagem e analistas que buscam soluções.</p>
 
 * **Exemplos** - Funções para manipulação de dados do Banco.
	 * Embedded
     * MsExecAuto
     * RecLock
     * TCQuery
     * DbSeek
  
 * **Pontos de Entradas** - Usado para fazer acesso a informações e manipulalas em tempo de execução.
     * **F080BENEF** - Subistitui o nome do beneficiário na impressão do cheque do nome fantasia(A2_NREDUZ) para razão social(A2_NOME).
     * **F470ALLF** - Permite vizualizar extrato bancário de forma consolidada para usuários que não tenham permissão nas empresas e que tenham o saldo compartilhado SE8.
     * **M460FIM** - Executado na preparação do documento de saída para manipulação das informações, neste exemplo alimenta a tabela SE1 com informações de dois campos do tipo data(competência) utilizado no pedido de venda, C5_XCOMIN -> E1_XCOMIN e C5_XCOMFI -> E1_XCOMFI.
     * **MA080MNU** - Abilita a opção cópiar TES no menu outras ações.
     * **MT100GE2** - Executo após a classificação do documento, utilizado para manipula informações do tituloa pagar, neste exemplo levo o centro de custo e código de barras informado. O centro de custo só será levado em casos em que sejam iguais para todos os itens ou informado na duplicata, em casos de diferença nos itens, não levara pois neste caso deve-se se realizar o rateio. Deve-se utilizar em comjunto com o MT103SE2.
     * **MT103IPC** - Manipula o aCols do pedido de venda para preenchimento da descrição do item na importação do pedido, pois para este caso gatilho não funciona.
     * **MT103SE2** - Manipula o aCols da SE2 utilizado no documento de entrada, executado em conjunto com o MT100GE2.
     * **PE01NFESEFAZ** - Manipula as informações da nota antes de montar a DANFE, evitando de customizar o DANFEII ou DANFEIII. Neste exemplo realizo a quebra da mensagem adicional e tambem adiciono informações por TES, os campos F2_MENNOTA e C5_MENNOTA devem ter o mesmo tamanho.