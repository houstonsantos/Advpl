# Advpl a Linguagem

<p align="justify">&nbsp;&nbsp;&nbsp;&nbsp; A Linguagem AdvPl teve seu in�cio em 1994, sendo na verdade uma evolu��o na utiliza��o de linguagens no padr�o xBase pela Microsiga Software S.A. (Clipper, Visual Objects e depois FiveWin). Com a cria��o da tecnologia Protheus, era necess�rio criar uma linguagem que suportasse o padr�o xBase para a manuten��o de todo o c�digo existente do sistema de ERP Siga Advanced. Foi ent�o criada a linguagem chamada Advanced Protheus Language</p>
	
<p align="justify">O AdvPl � uma extens�o do padr�o xBase de comandos e fun��es, operadores, estruturas de controle de fluxo e palavras reservadas, contando tamb�m com fun��es e comandos disponibilizados pela Microsiga que a torna uma linguagem completa para a cria��o de aplica��es ERP prontas para a Internet. Tamb�m � uma linguagem orientada a objetos e eventos, permitindo ao programador desenvolver aplica��es visuais e criar suas pr�prias classes de objetos.</p>

<p align="justify">Quando compilados, todos os arquivos de c�digo tornam-se unidades de intelig�ncia b�sicas, chamados APO�s (de Advanced Protheus Objects). Tais APO�s s�o mantidos em um reposit�rio e carregados dinamicamente pelo AP6 Server para a execu��o. Como n�o existe a linkedi��o, ou uni�o f�sica do c�digo compilado a um determinado m�dulo ou aplica��o, fun��es criadas em AdvPl podem ser executadas em qualquer ponto do ambiente Advanced Protheus.</P>

<p align="justify">O compilador e o interpretador da linguagem AdvPl � o pr�prio servidor AP6 (AP6 Server), e existe um ambiente visual para desenvolvimento integrado (AP6 IDE) onde o c�digo pode ser criado, compilado e depurado.

Os programas em AdvPl podem conter comandos ou fun��es de interface com o usu�rio.</p>


# A Tecnologia Protheus

<p align="justify">&nbsp;&nbsp;&nbsp;&nbsp; O Advanced Protheus � uma nova tecnologia desenvolvida sobre o sistema Advanced, que teve toda a intelig�ncia dividida em duas camadas: Servidor de Aplica��o (Protheus Server) e Interface (Remote). Ou seja, uma aplica��o 32 bits que se encarrega do gerenciamento das conex�es, da execu��o do c�digo AdvPl e do acesso aos recursos de banco de dados (ADS, Btrieve, CTree ou TopConnect), e uma aplica��o thin-client que efetua apenas a interface com o usu�rio.</p>

## Do Reposit�rio

 <p align="justify">&nbsp;&nbsp;&nbsp;&nbsp; Neste reposit�rio voc� encontra exemplo dos mais diversos, usando fun��es ADVPL, para auxili� lo nos seus estudos da linguagem.</p>
 
 * **Exemplos** - Fun��es para manipula��o de dados do Banco.
	 * Embedded
     * MsExecAuto
     * RecLock
     * TCQuery
     * DbSeek
  
 * **Pontos de Entradas** - Usado para fazer acesso a informa��es e manipulalas em tempo de execu��o.
     * F080BENEF
     * PE01NFESEFAZ
