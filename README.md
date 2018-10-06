# Advpl a Linguagem

<p align="justify">&nbsp;&nbsp;&nbsp;&nbsp; A Linguagem AdvPl teve seu início em 1994, sendo na verdade uma evolução na utilização de linguagens no padrão xBase pela Microsiga Software S.A. (Clipper, Visual Objects e depois FiveWin). Com a criação da tecnologia Protheus, era necessário criar uma linguagem que suportasse o padrão xBase para a manutenção de todo o código existente do sistema de ERP Siga Advanced. Foi então criada a linguagem chamada Advanced Protheus Language</p>
	
<p align="justify">O AdvPl é uma extensão do padrão xBase de comandos e funções, operadores, estruturas de controle de fluxo e palavras reservadas, contando também com funções e comandos disponibilizados pela Microsiga que a torna uma linguagem completa para a criação de aplicações ERP prontas para a Internet. Também é uma linguagem orientada a objetos e eventos, permitindo ao programador desenvolver aplicações visuais e criar suas próprias classes de objetos.</p>

<p align="justify">Quando compilados, todos os arquivos de código tornam-se unidades de inteligência básicas, chamados APO´s (de Advanced Protheus Objects). Tais APO´s são mantidos em um repositório e carregados dinamicamente pelo AP6 Server para a execução. Como não existe a linkedição, ou união física do código compilado a um determinado módulo ou aplicação, funções criadas em AdvPl podem ser executadas em qualquer ponto do ambiente Advanced Protheus.</P>

<p align="justify">O compilador e o interpretador da linguagem AdvPl é o próprio servidor AP6 (AP6 Server), e existe um ambiente visual para desenvolvimento integrado (AP6 IDE) onde o código pode ser criado, compilado e depurado.

Os programas em AdvPl podem conter comandos ou funções de interface com o usuário.</p>


# A Tecnologia Protheus

<p align="justify">&nbsp;&nbsp;&nbsp;&nbsp; O Advanced Protheus é uma nova tecnologia desenvolvida sobre o sistema Advanced, que teve toda a inteligência dividida em duas camadas: Servidor de Aplicação (Protheus Server) e Interface (Remote). Ou seja, uma aplicação 32 bits que se encarrega do gerenciamento das conexões, da execução do código AdvPl e do acesso aos recursos de banco de dados (ADS, Btrieve, CTree ou TopConnect), e uma aplicação thin-client que efetua apenas a interface com o usuário.</p>

## Do Repositório

 <p align="justify">&nbsp;&nbsp;&nbsp;&nbsp; Neste repositório você encontra exemplo dos mais diversos, usando funções ADVPL, para auxiliá lo nos seus estudos da linguagem.</p>
 
 * **Exemplos** - Funções para manipulação de dados do Banco.
	 * Embedded
     * MsExecAuto
     * RecLock
     * TCQuery
     * DbSeek
  
 * **Pontos de Entradas** - Usado para fazer acesso a informações e manipulalas em tempo de execução.
     * F080BENEF
     * PE01NFESEFAZ
