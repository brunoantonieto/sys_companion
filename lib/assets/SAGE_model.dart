import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Commands {
  String command;
  String commandDesc;

  Commands({this.command, this.commandDesc});
}

final List<Commands> commands = <Commands>[
  Commands(
    command: 'AtualizaBD fria fonte',
    commandDesc:
        'Principal comando do SAGE. Atualiza a base de dados com os ultimos dats.',
  ),
  Commands(
    command: 'ativa gcd',
    commandDesc: 'Ativa o sistema',
  ),
  Commands(
    command: 'desativa gcd',
    commandDesc: 'Desativa o sistema',
  ),
];

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

class Tutorials {
  String tutorialTitle;
  String tutorialDesc;
  String tutorialText;
  List<String> assets;

  Tutorials(
      {this.tutorialTitle, this.tutorialDesc, this.tutorialText, this.assets});
}

final List<Tutorials> tutorials = <Tutorials>[
  Tutorials(
      tutorialTitle: "Adicionar um ponto Digital",
      tutorialDesc: "Como adicionar um ponto digital na base de dados do SAGE",
      assets: [
        "Icone-DBS-03.png",
        "Icone-DBS-06.png",
        "Icone-DBS-07.png",
      ],
      tutorialText: "faz isso isso e isso"),
  Tutorials(
      tutorialTitle: "Adicionar um ponto Analógico",
      tutorialDesc:
          "Como adicionar um ponto analógico na base de dados do SAGE",
      assets: ["Icone-DBS-03.png"],
      tutorialText: "faz isso isso e aquilo"),
  Tutorials(
      tutorialTitle: "Adicionar um ponto Comando",
      tutorialDesc: "Como adicionar um ponto comando na base de dados do SAGE",
      assets: [],
      tutorialText: "faz isso aquilo e isso"),
];

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

class SubSystem {
  String subsystemName;
  String subsystemDesc;
  List<String> entity;
  List<String> entityName;
  List<String> entityDesc;
  List<List<List<String>>> params;

  final Color cardColor;

  SubSystem(
      {this.subsystemName,
      this.subsystemDesc,
      this.entity,
      this.entityName,
      this.entityDesc,
      this.params,
      this.cardColor});
}

final List<SubSystem> subsystems = <SubSystem>[
  //Pontos Físicos
  SubSystem(
    subsystemName: 'Pontos Físicos',
    subsystemDesc:
        'Configura os pontos físicos de aquisição e distribuição organizados em CNFs (configurações físicas). A Configuração dos Pontos Físicos depende da organização dos dados para cada protocolo utilizado.',
    cardColor: Colors.yellow[200],
    entity: [
      'PAF',
      'PTF',
      'PDF',
      'CNF',
      'CGF',
      'TN1',
      'TN2',
      'NV1',
      'NV2',
      'RFI',
      'RFC'
    ],
    entityName: [
      //PAF
      'Ponto Analógico Físico',
      //PAF
      'Ponto Totalizado Físico',
      //PDF
      'Ponto Digital Físico',
      //CNF
      'Configuração da Ligação Física do SCD',
      //CGF
      'Ponto de Controle Física',
      //TN1
      'Tipo de Entidade Física de Nível 1',
      //TN2
      'Tipo de Entidade Física de Nível 2',
      //NV1
      'Nível 1 da Configuração Física',
      //NV2
      'Nível 1 da Configuração Física',
      //RFI
      'Relacionamento de Filtros Simples',
      //RFC
      'Relacionamento de Filtros Compostos',
    ],
    entityDesc: [
      //PAF
      'Configura todos os pontos analógicos físicos de aquisição e de distribuição associados a todas as configurações (CNFs) de todas as ligações (LSCs).',
      //PTF
      'Configura todos os pontos totalizadores físicos de aquisição e de distribuição associados a todas as configurações de todas as ligações.',
      //PDF
      'Configura todos os pontos digitais físicos de aquisição e de distribuição associados a todas as configurações (CNFs) de todas as ligações (LSCs).',
      //CNF
      'Configura todas as CNFs de aquisição e/ou distribuição associadas a todas as LSCs do sistema.',
      //CGF
      'Configura todos os pontos de controle físicos de aquisição e de distribuição associados a todas as configurações CNFs de todas as ligações LSCs.',
      //TN1
      'Esta entidade descreve os tipos de entidades de nível 1 que podem existir.',
      //TN2
      'Esta entidade descreve os tipos de entidades de nível 2 que podem existir.',
      //NV1
      'Configura todas as entidades de nível 1 de todas as CNFs.',
      //NV2
      'Configura todas as entidades de nível 2 de todas as CNFs.',
      //RFI
      'Filtro simples é aquele cujas parcelas (pontos físicos) podem participar de apenas um único filtro gerando ponto lógico.',
      //RFC
      'Filtro composto e aquele cujas parcelas (pontos físicos) pode participar de vários filtros gerando vários pontos lógicos. Atributos de Relacionamento',
    ],
    params: [
      [
        //PAF
        [
          'ID',
          'Identificador do ponto analógico físico.',
        ],
        [
          'KCONV1',
          'Coeficiente multiplicativo de conversão da medida. Floats e unidade de engenharia com default = 1.0.',
        ],
        [
          'KCONV2',
          'Define o nesting-level relativo ao do CDC simples nos reportes feitos pelo IED. Relativo aos DataSets.'
        ],
        [
          'KCONV3',
          'Define o endereço do IEC-61850 do ponto analógico'
              '''\nIEEE: Dado analógico de qualquer tipo primitivo (int, float, ...)
            \nAPC0: Valor do set-point  – setMag 
            \nSAV0: Valor instantâneo da medida – instMag 
            \nMV0: Valor da medida sob banda morta – mag 
            \nMV1: Valor instantâneo da medida – instMag 
            \nCMV0: Valor da medida sob banda morta – cVal.mag 
            \nCMV1: Valor do angulo sob banda morta – cVal.ang 
            \nCMV2: Valor instantâneo da medida – instCVal.mag 
            \nCMV3: Valor instantâneo do angulo – instCVal.ang'''
        ],
        [
          'ORDEM',
          'Número seqüencial de 1 a n que indica a ordem do ponto no nível 2 da configuração física'
        ],
        [
          'TPPNT',
          'Indica se o ponto físico é de aquisição (PAS) ou de distribuição (PAD).'
        ],
        [
          'DESC1',
          'Informações complementares 1. O preenchimento deste atributo é opcional.'
        ],
        [
          'DESC2',
          'Informações complementares 2. O preenchimento deste atributo é opcional.'
        ],
        [
          'NV2',
          'Identificador do nível 2 (NV2) ao qual o ponto físico pertence. Define um relacionamento 1 → n entre a entidade NV2 e a entidade PAF.'
        ],
        [
          'PNT',
          'Identificador do ponto analógico lógico ao qual o ponto analógico físico está associado. A TAG do ponto, cada empresa tem o seu padrão.'
        ]
      ],
      [
        //PTF
        [
          'ID',
          'Identificador do ponto totalizador físico.',
        ],
        [
          'KCONV1',
          'Este atributo não é utilizado para pontos totalizadores / discretos.'
        ],
        [
          'KCONV3',
          '''Define o endereço do IEC-61850 do ponto analógico. Pode assumir:'
            \nIEEE: Dado totaliz./discreto de qualquer tipo primitivo (int, float, ...) 
            \nINS0: Estado discreto corrente (stVal) 
            \nSEC0: Contagem corrente de violações (cnt) 
            \nBCR0: Contagem corrente (actVal) 
            \nBCR1: Contagem congelada (frVal) 
            \nINC0: Estado discreto corrente (stVal) 
            \nINC1: Estado de seleção para controle (stSeld) 
            \nBSC0: Posição binária corrente (valWTr) 
            \nBSC1: Estado de seleção para controle (stSeld)
            \nISC0: Posição discreta corrente (valWTr) 
            \nISC1: Estado de seleção para controle (stSeld)'''
        ],
        [
          'ORDEM',
          'Número seqüencial de 1 a n que indica a ordem do ponto no nível 2 da configuração física.',
        ],
        [
          'TPPNT',
          'Indica se o ponto físico é de aquisição (PTS) ou de distribuição (PTD).',
        ],
        [
          'DESC1',
          'Informações complementares 1.',
        ],
        [
          'DESC2',
          'Informações complementares 2.',
        ],
        [
          'NV2',
          'Identificador do nível 2 (NV2) ao qual o ponto físico pertence. Define um relacionamento 1 → n entre a entidade NV2 e a entidade PTF.',
        ],
        [
          'PNT',
          'Identificador do ponto ao qual o ponto totalizador (aquisição ou distribuição) físico está associado. Cada empresa tem o seu padrão.',
        ],
      ],
      [
        //PDF
        [
          'ID',
          'Identificador do ponto digital físico.',
        ],
        [
          'NV2',
          'Identificador do nível 2 (NV2) ao qual o ponto físico pertence. Define um relacionamento 1 → n entre a entidade NV2 e a entidade PDF.'
        ],
        [
          'KCONV',
          '''Define o endereço do IEC-61850 do ponto analógico. Pode assumir:
            \nNOR: dado digital de qualquer tipo primitivo (bool, int, bit-string, ..) 
            \nSPS0: estado corrente (stVal)
            \nDPS0: estado corrente (stVal) 
            \nSPC0: estado corrente (stVal) 
            \nSPC1: estado de seleção para controle (stSeld) 
            \nDPC0: estado corrente (stVal)  
            \nDPC1: estado de seleção para controle (stSeld) 
            \nACT0: indicação de atuação (general) 
            \nACT1: indicação de atuação da fase A (phsA) 
            \nACT2: indicação de atuação da fase B (phsB) 
            \nACT3: indicação de atuação da fase C (phsC) 
            \nACT4: indicação de atuação do neutro (neut) 
            \nACD0: indicação de atuação (general) 
            \nACD1: indicação de atuação da fase A (phsA) 
            \nACD2: indicação de atuação da fase B (phsB) 
            \nACD3: indicação de atuação da fase C (phsC) 
            \nACD4: indicação de atuação do neutro (neut) 
            \nACD5: direção geral da atuação (dirGeneral)  
            \nACD6: direção atuação na fase A (dirPhsA)
            \nACD7: direção atuação na fase B (dirPhsB)
            \nACD8: direção atuação na fase C (dirPhsC)
            \nACD9: direção atuação no neutro (dirNeut)'''
        ],
        [
          'ORDEM',
          'Número seqüencial de 1 a n que indica a ordem do ponto no nível 2 (NV2) da configuração física.',
        ],
        [
          'TPPNT',
          'Indica se o ponto físico é de aquisição (PDS) ou de distribuição (PDD).',
        ],
        [
          'DESC1',
          'Informações complementares 1. O preenchimento deste atributo é opcional.',
        ],
        [
          'DESC2',
          'Informações complementares 2. O preenchimento deste atributo é opcional.',
        ],
        [
          'NV2',
          'Identificador do nível 2 (NV2) ao qual o ponto físico pertence. Define um relacionamento 1 → n entre a entidade NV2 e a entidade PTF.',
        ],
        [
          'PNT',
          'Identificador do ponto ao qual o ponto digital (aquisição ou distribuição) físico está associado. Cada empresa tem o seu padrão.',
        ],
      ],
      [
        //CNF
        [
          'ID',
          'Identificador da configuração física.',
        ],
        [
          'LSC',
          'Configuração específica da ligação associada a um determinado conversor de protocolo. Pode representar qualquer parametrização necessária que não possa ser generalizada para todos os conversores de protocolos. Consultar o Anx17_61850, pg 20 para maiores informações.',
        ],
        [
          'ID',
          'Identificador da ligação (LSC) à qual a CNF pertence. Define o relacionamento 1 → 1 entre a entidade LSC e a entidade CNF',
        ],
      ],
      [
        //CGF
        [
          'ID',
          'Identificador do ponto de controle físico',
        ],
        [
          'KCONV',
          '''Define a conversão do ponto lógico no ponto físico, ou seja, da unidade de engenharia para unidade do equipamento.
            \nPreenche-se com até duas strings [S1][S2], informando como o controle será procedido e se o SAGE deve aguardar por uma mensagem com um informationReport, respectivamente.
            \n S1 - SBO(w): select-before-operate(-with-value)
            \n S2 - TERM: CommandTermination
            \nA ausência de ambas palavras indica que o controle é direto (sem SBO), sem enhenced security e sem nenhum dos dois checks (Sincro-Check e Interlock-Check).'''
        ],
        [
          'ORDEM',
          'A implementação SAGE do protocolo IEC/61850 não utiliza a informação deste atributo. Portanto, ele não deve ser preenchido. ',
        ],
        [
          'DESC1',
          'Informações complementares 1. O preenchimento deste atributo é opcional.',
        ],
        [
          'DESC2',
          'Informações complementares 2. O preenchimento deste atributo é opcional.',
        ],
        [
          'CGS',
          'Identificador do ponto de controle lógico associado ao ponto de controle físico. Define um relacionamento 1 → 1 entre a entidade CGS e a entidade CGF.'
        ],
        [
          'NV2',
          'Identificador do nível 2 (NV2) ao qual o ponto pertence. Define um relacionamento 1 → n entre a entidade NV2 e a entidade CGF.',
        ],
        [
          'CNF',
          'A implementação SAGE do protocolo IEC/61850 não utiliza a informação deste atributo. Portanto, ele não deve ser preenchido. ',
        ],
      ],
      [
        //TN1
        ['ID', 'Identificador do tipo de entidade de nível 1.'],
        ['DESCR', 'Descrição do tipo de entidade física de nível 1'],
        [
          'NSEQ',
          'Número sequencial utilizado com chave de ordenação para garantir a atribuição de valores numéricos simbólicos constantes. O número zero é reservado para ausência de tipo de entidade de nível 1.'
        ],
      ],
      [
        //TN2
        [
          'ID',
          '''Identificador do tipo de entidade de nível 2. Podem assumir:
            \nADAQ - Aquisição de objetos com CDCs classificados no SAGE como digitais
            \nAAAQ - Aquisição de objetos com CDCs classificados no SAGE como analógicos
            \nATTA - Aquisição de objetos com CDCs classificados no SAGE como totalizadores/discretos
            \nCSIM - Objetos de controle supervisório'''
        ],
        ['DESCR', 'Descrição do tipo de entidade física de nível 2.'],
        [
          'NSEQ',
          'Número sequencial utilizado com chave de ordenação para garantir a atribuição de valores numéricos simbólicos constantes. O número zero é reservado para ausência de tipo de entidade de nível 2.'
        ],
      ],
      [
        //NV1
        ['ID', 'Identificador de entidade de nível 1.'],
        ['CONFIG', 'Configuração específica do nível 1.'],
        [
          'ORDEM',
          'Número sequencial de 1 a n que indica a ordem da entidade de nível 1 dentro da configuração (CNF) que ela pertence.'
        ],
        [
          'CNF',
          'Identificador da configuração à qual a entidade de nível 1 pertence. Define um relacionamento 1 → n entre a entidade CNF e a entidade NV1.'
        ],
        [
          'TN1',
          'Identificador do tipo de entidade de nível 1, sendo configurado entre os cadastrados na entidade TN1. Define um relacionamento 1 → n entre a entidade TN1 e a entidade NV1. Podem existir várias entidades de nível 1 de um determinado tipo'
        ],
      ],
      [
        //NV2
        ['ID', 'Identificador de entidade de nível 2.'],
        ['CONFIG', 'Configuração específica do nível 2.'],
        [
          'ORDEM',
          '''Número sequencial de 1 a n que indica a ordem da entidade de nível 2 dentro da entidade que ela pertence. Pode assumir:
            \nPAF para pontos analógicos
            \nPDF para pontos digitais
            \nPTF para pontos totalizadores
            \nCGF para pontos de controle'''
        ],
        [
          'NV1',
          'Identificador da configuração à qual a entidade de nível 2 pertence. Define um relacionamento 1 → n entre a entidade NV1 e a entidade NV2.'
        ],
        [
          'TN2',
          'Identificador do tipo de entidade de nível 2, sendo configurado entre os cadastrados na entidade TN2. Define um relacionamento 1 → n entre a entidade TN2 e a entidade NV2. Podem existir várias entidades de nível 2 de um determinado tipo'
        ],
      ],
      [
        //RFI
        [
          'ORDEM',
          'Número sequencial de 1 a n que indica a ordem da parcela no filtro.'
        ],
        [
          'TIPOP',
          '''Tipo da parcela do filtro. Pode assumir:
            \nPAF para pontos analógicos
            \nPDF para pontos digitais
            \nPTF para pontos totalizadores'''
        ],
        [
          'PNT',
          'Identificador do ponto físico que compõe a parcela. Dependendo do atributo de relacionamento TIPOP aponta para PAF, PDF ou PTF. Define o relacionamento 1 → 1 entre as entidades de pontos físicos (PAF, PDF e PTF).'
        ],
      ],
      [
        //RFC
        [
          'ORDEM',
          'Numero sequencial de 1 a n que indica a ordem da parcela no filtro'
        ],
        [
          'TPPARC',
          '''Tipo da parcela do filtro. Pode assumir:
            \nPAF para pontos analógicos físicos
            \nPDF para pontos digitais físicos
            \nPTF para pontos totalizadores físicos'''
        ],
        [
          'TPPNT',
          '''Tipo do ponto resultante do filtro. Pode assumir:
            \nPAS para pontos analógicos lógicos
            \nPDS para pontos digitais lógicos
            \nPTS para pontos totalizadores lógicos'''
        ],
        [
          'PARC',
          'Identificador do ponto físico que compõe a parcela do filtro.'
        ],
        [
          'PNT',
          'Identificador do ponto físico resultante do filtro. Dependendo do atributo de relacionamento TPPNT aponta para PAS, PDS ou PTS. Define o relacionamento 1 → 1 entre as entidades de pontos lógicos (PAS, PDS e PTS).'
        ],
      ],
    ],
  ),

  //Alarme e Eventos
  SubSystem(
    subsystemName: 'Alarme e Eventos',
    subsystemDesc:
        'A configuração do Serviço de Alarmes e Eventos se baseia principalmente na definição, pelo usuário, das listas de alarmes/eventos que poderão ser exibidas pelo sistema. '
        'Essas listas podem conter alarmes/eventos relativos aos pontos do sistema elétrico, à gerência da comunicação de dados, do suporte computacional, às ações do operador, às aplicações,'
        ' etc. O usuário tem flexibilidade para configurar essas listas por tipo de evento, por estação, por região, por pontos de um bay, por tipo de ponto, etc. Existirá sempre uma lista Geral '
        'de Alarmes/Eventos para onde será direcionado todo e qualquer alarme/evento relativo aos pontos do Sistema Elétrico gerado pelo sistema. Esta lista precisa ser configurada na entidade MAP com o atributo ID igual a GERAL.',
    cardColor: Colors.grey[200],
    entity: ['MAP', 'E2M', 'OCR', 'TELA'],
    entityName: [
      //MAP
      'Macro Alarmes',
      //E2M
      'Relacionamento Ponto Lógico x MAP',
      //OCR
      'Entidade Ocorrência',
      //TELA
      'Entidade Tela'
    ],
    entityDesc: [
      //MAP
      'Existe uma relação biunívoca entre listas de alarmes/eventos e macro alarmes, os quais são configurados nesta entidade.',
      //E2M
      'Especifica os relacionamentos n → m entre a entidade MAP e as entidades PAS, PTS, PDS e OCR.',
      //OCR
      'Configura as ocorrências existentes no sistema. Existem dois tipos básicos:\nAquelas associadas aos pontos lógicos (Abriu/Fechou)\nAquelas associadas aos alarmes (Ligação operacional, Entrada manual de dados, etc)',
      //TELA
      'Configura telas associadas à ocorrências ou instalações.'
    ],
    params: [
      [
        //MAP
        ['ID', 'Identificador do Macro Alarme.'],
        [
          'NARRT',
          'Narrativa para servir como título da lista quando a mesma for apresentada pela interface gráfica do sistema.'
        ],
        [
          'ORDEM',
          'Número seqüencial de 1 a n que indica a ordem de posicionamento do macro alarme na tela da interface gráfica do sistema.'
        ],
      ],
      [
        //E2M
        [
          'IDPTO',
          'Identificador do ponto lógico ou da ocorrência. Dependendo do atributo de relacionamento TIPO aponta para PAS, PTS, PDS, ou OCR.'
        ],
        [
          'MAP',
          'Identificador do macro alarme associado ao ponto lógico ou à ocorrência.'
        ],
        [
          'TIPO',
          '''Especifica qual é a entidade a ser relacionada com MAP: 
               \nPAS - Ponto Analógico Lógico
               \nPTS - Ponto Totalizador Lógico
               \nPDS - Ponto Digital Lógico
               \nOCR - Ocorrência'''
        ],
      ],
      [
        //OCR
        ['ID', 'Identificador da ocorrência.'],
        [
          'TEXTO',
          'Texto da ocorrência que aparecerá na lista de alarmes/eventos.'
        ],
        [
          'TIPOE',
          '''Tipo da ocorrência. Define a maneira que um alarme/evento vai ser tratado nas listas; pode assumir os seguintes valores:
            \nNORML - Normal - não entra reconhecido, não pode ser eliminado se não reconhecido, não é eliminado quando reconhecido, pode ser eliminado em qualquer severidade, é sobreposto por outro alarme/evento para o mesmo ponto e possui um contador de sobreposições com indicação da maior severidade sobreposta.
            \nAUTOE - Auto Eliminação - igual ao normal, a menos que o alarme é eliminado da lista quando for reconhecido;
            \nAUTOR - Auto Reconhecimento - igual ao normal, a menos que o alarme já entra na lista reconhecido;
            \nNELSV - Não Elimina devido a Severidade - igual ao normal, a menos que o alarme não é eliminado se a sua severidade for diferente de normal (NORML); (NESLV foi descontinuado, sendo substituído por NELES ou ALRP – a partir da 23)
            \nNSUPE - Não Sobrepõe - igual ao normal, a menos que os alarmes são exibidos nas listas sem sobreposição;'''
        ],
        [
          'TPSOM',
          '''Tipo do sinal sonoro associado à ocorrência, pode ser:
            \nBREVE
            \nLONGO
            \nCONTI (contínuo)
            \nNULO'''
        ],
        [
          'TPUSR',
          '''Indica o tipo de usuário que utiliza a ocorrência. Pode assumir os seguintes valores:
            \nSIS - para ocorrência do SAGE.
            \nUAPL - para ocorrências das aplicações geradas pelo usuário.
            \nUSR - para ocorrências usadas pelos pontos do sistema elétrico configurados em PAS, PTS ou PDS.
            \n[Atenção]\nAs ocorrências configuradas com TPUSR =  SIS não devem ser alteradas pelo usuário.'''
        ],
        [
          'SERVER',
          'Identificador da severidade para a ocorrência. Define o relacionamento 1 → n entre a entidade SEV e a entidade OCR.'
        ],
        [
          'TELA',
          'Identificador da tela associada à ocorrência, ou seja, se o usuário der um clique nesta ocorrência no Visor de Alarmes, a telacorrespondente será apresentada no Visor de Telas.'
        ],
        [
          'OCR',
          '''Ocorrencia de alarmes:
            \n1. Inconsistente  1
            \n2. Inconsistente  0
            \n3. 0  1 e 1  0
            \n4. 0  1
            \n5. 1  0
            \n6. 1  0 e 0  1'''
        ],
      ],
      [
        //TELA
        ['ID', 'Identificador da tela cadastrada na base de dados.'],
      ]
    ],
  ),

  //Aquisição e Controle
  SubSystem(
    subsystemName: 'Aquisição e Controle',
    subsystemDesc:
        'O Serviço de Aquisição e Controle é modelado através de LSCs de aquisição ou mistas. Uma LSC está associada a uma CNF de aquisição ou mista. Os dados lógicos de aquisição de uma LSC são agrupados em TACs (Terminais de Aquisição e Controle).',
    cardColor: Colors.blue[200],
    entity: [
      'LSC',
      'INS',
      'TAC',
      'CGS',
      'PAS',
      'PTS',
      'PDS',
      'RCA',
      'TCL',
      'PTC',
      'TCTL',
      'TEMPO',
      'GRUPO',
      'GRCMP'
    ],
    entityName: [
      //LSC
      'Ligação SCADA',
      //INS
      'Instalação',
      //TAC
      'Terminal de Aquisição e Controle',
      //CGS
      'Ponto de Controle Genérico do SAC',
      //PAS
      'Ponto de Medição Analógica',
      //PTS
      'Ponto de Medição de Totalização',
      //PDS
      'Ponto de Medição Digital',
      //RCA
      'Relacionamento de Pontos Lógicos x Pontos Calculados',
      //TCL
      'Tipos de Cálculos',
      //PTC
      'Patamar de Carga para Atualização Automática de Limites',
      //TCTL
      'Tipo de Controle',
      //TEMPO
      'Tabela de Tempo para Atualização Automática de Limites',
      //GRUPO
      'Grupo de Componentes para Diálogo Automático',
      //GRCMP
      'Relacionamento de Componentes de Grupos de Diálogo Automático'
    ],
    entityDesc: [
      //LSC
      'Configura as ligações virtuais lógicas de aquisição e controle, de distribuição e mistas existentes no sistema.',
      //INS
      'Descreve os dados do projeto',
      //TAC
      'As TACs definem grupos lógicos de aquisição de uma mesma funcionalidade. É o nome do IED.',
      //CGS
      'Configura os pontos de controle lógicos de todas as TACs de todas as LCSs do sistema.',
      //PAS
      'Configura os pontos analógicos e calculados analógicos lógicos de todas as TACs de todas as LSCs do sistema.',
      //PTS
      'Configura os pontos totalizadores e calculados totalizadores lógicos de todas as TACs de todas as LSCs do sistema.',
      //PDS
      'Configura os pontos digitais e calculados digitais lógicos de todas as TACs de todas as LSCs do sistema.',
      //RCA
      'Especifica os relacionamentos n → m entre as entidades PAS, PTS e PDS e as entidades PAS, PTS e PDS. Enumera todas as parcelas (pontos lógicos simples) de todos os pontos calculados.',
      //TCL
      'Configura os cálculos implementados no sistema.',
      //PTC
      'Patamar de Carga para Atualização Automática de Limites',
      //TCTL
      'Especifica os tipos que o ponto de controle pode assumir na configuração do diálogo de controle.',
      //TEMPO
      'Tabela de Tempo para Atualização Automática de Limites',
      //GRUPO
      'Configura grupos de componentes para diálogo automático.',
      //GRCMP
      'Configura a janela de pop-up ao clicar em uma IED no Visor de Telas do SAGE'
    ],
    params: [
      [
        //LSC
        ['ID', 'Identificador da ligação SCADA.'],
        ['NOME', 'Descrição da ligação por extenso.'],
        [
          'NSRV1',
          'Estação de rede onde está alocado o servidor 1 do transportador de protocolo que servirá a esta ligação.'
        ],
        [
          'NSRV2',
          'Estação de rede onde está alocado o servidor 2 do transportador de protocolo que servirá a esta ligação.'
        ],
        [
          'TIPO',
          'Tipo da ligação. Pode assumir os seguintes valores ([A]quisição/[D]istribuição):\n - AA\n - DD\n - AD'
        ],
        [
          'VERBD',
          'Versão da base de dados dessa ligação (referência entre físico e lógico).'
        ],
        [
          'GSD',
          'Identificador do gateway SCADA ao qual a LSC está associada. Define um relacionamento 1 → n entre a entidade GSD e a entidade LSC.'
        ],
        [
          'MAP',
          'Identificador do macro-alarme ao qual a LSC está associada. Define um relacionamento 1 → n entre a entidade MAP e a entidade LSC.'
        ],
        [
          'TCV',
          'Identificador do Conversor de Protocolo ao qual a LSC está associada. Define um relacionamento 1 → n entre a entidade TCV e a entidade LSC.'
        ],
        [
          'TTP',
          'Identificador do Transportador de Protocolo ao qual a LSC está associada. Define um relacionamento 1 → n entre a entidade TTP e a entidade LSC.'
        ]
      ],
      [
        //INS
        ['CIA', 'Companhia proprietária.'],
        ['ID', 'Identificador da instalação, ou seja, usina ou subestação.'],
        ['NOME', 'Descrição da instalação por extenso.'],
        [
          'TIPO',
          'Tipo da instalação. Pode assumir os seguintes valores:\n - USI: Usina\n - SUB Subestação.'
        ],
        [
          'LATIT',
          'Latitude da instalação (> 0: ao norte do Equador e < 0: ao sul do Equador).'
        ],
        [
          'LONGT',
          'Longitude da instalação (> 0: leste de Greenwich e < 0: a oeste de Greenwich).'
        ],
        ['TELA', 'Identificador da tela associada a instalação.'],
        [
          'PTC',
          'Identificador do patamar de carga associado à instalação. As instalações associadas a um mesmo PTC seguirão um mesmo critério.'
        ],
      ],
      [
        //TAC
        ['ID', 'Identificador do terminal de aquisição e controle.'],
        ['NOME', 'Descrição da TAC por extenso'],
        [
          'TPAQS',
          '''Tipo da TAC. Podem assumir:
            \nASAC - TAC de aquisição e controle.
            \nACSC - TAC de resultados de cálculos estáticos compilados, ou seja, todos os pontos que são resultados de cálculos estáticos compilados devem ser agrupados em TACs deste tipo, que devem pertencer todas a uma única ligação de aquisição de cálculos.
            \nAFIL - TAC de resultados de filtros localizados, ou seja, todos os pontos que são resultados dos filtros implementados internamente nos conversores de protocolo e cujas parcelas pertençam à mesma CNF/LSC, devem ser agrupados em TACs deste tipo.
            \nAFID - TAC de resultados de filtros distribuídos, ou seja, todos os pontos que são resultados dos filtros implementados internamente nos conversores de protocolo e cujas parcelas pertençam à CNF/LSC diferentes, devem ser agrupados em TACs deste tipo.
            \nACDI - TAC de resultados de cálculos estáticos interpretados e dinâmicos, ou seja, todos os pontos que são resultados de cálculos estáticos interpretados devem ser agrupados em TACs deste tipo, que devem pertencer todas a uma única ligação de aquisição de cálculos. Caso não exista uma TAC deste tipo na LSC de cálculos, o STI a criará automaticamente para alocar nela pontos de cálculo dinâmico a serem utilizados no Visor de Cálculos.
            \nASDE - TAC de SDE, ou seja, pontos que fazem parte de seqüência de eventos têm que ser configurados em TACs deste tipo. Este tipo de TAC é utilizado somente pelos protocolos Conitel e ModBus'''
        ],
        ['LSA', 'Limite superior do número de alarmes por minuto'],
        ['LIA', 'Limite de normalização do número de alarmes por minuto'],
        [
          'INS',
          'Identificador da instalação à qual a TAC pertence. Define um relacionamento 1 → n entre a entidade INS e a entidade TAC.'
        ],
        [
          'LSC',
          'Identificador da ligação SCADA à qual a TAC pertence. Define um relacionamento 1 → n entre a entidade LSC e a entidade TAC.'
        ],
      ],
      //CGS
      [
        ['ID', 'Identificador do ponto de controle.'],
        [
          'LMI1C',
          'Limite inferior de set-point 1 ou primeiro limite inferior de setpoint.'
        ],
        ['LMI2C', 'Segundo limite inferior de set-point.'],
        [
          'LMS1C',
          'Limite superior de set-point 1 ou primeiro limite superior de set-point 2.'
        ],
        ['LMS2C', 'Segundo limite superior de set-point 2.'],
        ['NOME', 'Descrição por extenso do ponto de controle.'],
        [
          'TIPO',
          '''Tipo do ponto supervisionado associado ao ponto de controle. Pode assumir:
            \nPAS - se o ponto supervisionado for analógico.
            \nPTS - se o ponto supervisionado for totalizado.
            \nPDS - se o ponto supervisionado for digital.
            \nTRRAC - Tempo em segundos para “timeout” do SAC na espera da resposta do conversor de protocolos, no envio de um comando.
            \nTPCTL - Tipo de controle. Pode assumir os seguintes valores:
            \nAFIC - Controle Fictício para Pontos Analógicos
            \nCSAC - Controle Supervisório do SAC.
            \nCSCD - Comandos da Gestão da Comunicação de Dados.
            \nDFIC - Controle Fictício para Pontos Digitais.
            \nOBSRV - Observações sobre o ponto de controle. O preenchimento deste atributo é opcional.'''
        ],
        [
          'PAC',
          'Identificador do ponto supervisionado associado ao ponto de controle. Dependendo do atributo TIPO desta entidade, aponta para a entidade PAS ou PDS. Define então, um relacionamento 1 → 1 entre a entidade PAS e a entidade CGS ou entre a entidade PDS e a entidade CGS.'
        ],
        [
          'PINT',
          'Identificador do ponto digital de intertravamento. Define um relacionamento 1 → 1 entre a entidade CGS e a entidade PDS. Opreenchimento desta chave não é obrigatório.'
        ],
        [
          'TAC',
          'Identificador da TAC à qual o ponto de controle pertence. Define um relacionamento 1 → n entre a entidade TAC e a entidade CGS.'
        ],
        [
          'TIPOE',
          'Identificador do tipo do equipamento controlado. Define um relacionamento de 1 → 1 entre a entidade TCTL e a entidade CGS.'
        ],
      ],
      //PAS
      [
        [
          'ALRIN',
          'Indica se o alarme do ponto deve ser inibido (SIM) ou não (NAO).'
        ],
        [
          'ALINT',
          'Indica se deve (SIM) ou não (NAO) ser gerado alarme do ponto na inicialização e em qualquer outra transição de ponto inválido para válido ou vice-versa.'
        ],
        [
          'BDTR',
          'Indicador de que o ponto analógico configurado na base fonte será incluído na base de tempo real (SIM) ou não (NAO).'
        ],
        [
          'BNDMO',
          'Banda morta do ponto que é um percentual calculado em relação ao limite de escala utilizado para filtrar as variações da medida.'
        ],
        [
          'TXVAR',
          'Percentual utilizado para que seja gerado um alarme indicativo de variação abrupta.'
        ],
        [
          'HTRIS',
          'Taxa de histerese que é um valor utilizado para filtrar os alarmes de retorno da medida de algum limite.'
        ],
        [
          'HISTPER',
          '''Indicador se o ponto vai ou não para a Base Histórica, podendo conter ou não o Período de Exportação. Pode assumir:
            \n-1: O ponto não vai para a Base Histórica.
            \n0: O ponto vai para a Base Histórica com o Período de Exportação default definido no ambiente histórico para a tabela PAS.
            \nx:  O ponto é gravado na Base Histórica com a periodicidade definida pelo atributo HISTPER indicada em segundos, sobrepondo para este ponto o valor definido no ambiente histórico para a tabela PAS. onde x citado acima, é qualquer valor positivo ≠ 0 e múltiplo da varredura estabelecida no ambiente histórico.
            \nObs.: O preenchimento deste atributo é opcional. Caso este não seja preenchido, é assumido o valor default 0.'''
        ],
        [
          'CDINIC',
          '''Indica a condição do ponto. Pode assumir:
            \nNORMAL - ponto em varredura e não manual;
            \nMANUAL - ponto com varredura inibida e manual;
            \nNAOSUP - ponto não supervisionado, ou seja, não existe configuração física para este ponto.
            \nESTIMADO -ponto não supervisionado, será apresentado o valor calculado pelo estimador.'''
        ],
        ['EQP', 'Equipamento associado.'],
        ['ID', 'Identificador da medida.'],
        [
          'SELSD',
          'Indica se o valor deste ponto ao ser distribuído deve ser (SIM) o aquisitado ou (NÃO) o considerado.'
        ],
        [
          'LIE',
          'Limite inferior de escala do medidor em unidades de engenharia.'
        ],
        [
          'LSE',
          'Limite superior de escala do medidor em unidades de engenharia.'
        ],
        ['LIA', 'Limite inferior de advertência em unidades de engenharia.'],
        ['LIU', 'Limite inferior de urgência em unidades de engenharia.'],
        ['LSA', 'Limite superior de advertência em unidades de engenharia.'],
        ['LSU', 'Limite superior de urgência em unidades de engenharia.'],
        ['NOME', 'Descrição do ponto por extenso.'],
        [
          'L[*]',
          '''Os seguintes pontos são limites de advertência ou urgência. Seus preenchimentos são opcionais.
            \nLIAMI - Limite inferior de advertência para o patamar de carga mínima, em unidades de engenharia.
            \nLIALE - Limite inferior de advertência para o patamar de carga leve, em unidades de engenharia.
            \nLIAME - Limite inferior de advertência para o patamar de carga média, em unidades de engenharia.
            \nLIAPE - Limite inferior de advertência para o patamar de carga pesada / período diurno, em unidades de engenharia.
            \nLIAMA - Limite inferior de advertência para o patamar de carga máxima / período noturno, em unidades de engenharia.
            \nLIUMI - Limite inferior de urgência para o patamar de carga mínima, em unidades de engenharia.
            \nLIULE - Limite inferior de urgência para o patamar de carga leve, em unidades de engenharia.
            \nLIUME - Limite inferior de urgência para o patamar de carga média, em unidades de engenharia.
            \nLIUPE - Limite inferior de urgência para o patamar de carga pesada / período diurno, em unidades de engenharia.
            \nLIUMA - Limite inferior de urgência para o patamar de carga máxima /período noturno, em unidades de engenharia.
            \nLSAMI - Limite superior de advertência para o patamar de carga mínima, em unidades de engenharia.
            \nLSALE - Limite superior de advertência para o patamar de carga leve, em unidades de engenharia.
            \nLSAME - Limite superior de advertência para o patamar de carga média, em unidades de engenharia.
            \nLSAPE - Limite superior de advertência para o patamar de carga pesada / período diurno, em unidades de engenharia.
            \nLSAMA - Limite superior de advertência para o patamar de carga máxima / período noturno, em unidades de engenharia.
            \nLSUMI - Limite superior de urgência para o patamar de carga mínima, em unidades de engenharia.
            \nLSULE - Limite superior de urgência para o patamar de carga leve, em unidades de engenharia.
            \nLSUME - Limite superior de urgência para o patamar de carga média, em unidades de engenharia.
            \nLSUPE - Limite superior de urgência para o patamar de carga pesada / período diurno, em unidades de engenharia.
            \nLSUMA - Limite superior de urgência para o patamar de carga máxima / período noturno, em unidades de engenharia.'''
        ],
        [
          'PTC',
          'Identificador do patamar de carga associado ao ponto analógico. Os pontos analógicos associados a um mesmo PTC seguirão um mesmo critério (definido para o PTC) para a atualização automática dos limites. O preenchimento deste atributo na tabela PAS tem prioridade sobre o preenchimento deste mesmo atributo nas tabelas INS, EST, SIS, REG, ACO e CIA.'
        ],
        [
          'TIPO',
          'Tipo da grandeza medida. Assume valores como AMP (Corrente), KV (Tensão), FREQ (Frequência), DIST (Distância), etc. Seu preenchiento é opcional.'
        ],
        [
          'TPEQP',
          'Tipo do equipamento onde se localiza a medida. Assume valores como SBA (Seção de barra), UGE (Unidade geradora), TR2 (Trafo de 2 enrolamentos), etc. Seu preenchimento é opcional.'
        ],
        [
          'TEND',
          'Indica se o ponto é (SIM) ou não (NAO) selecionado para tendência.'
        ],
        [
          'TPFIL',
          'Tipo do filtro, dentre aqueles implementados pelo conversor de protocolo, usado pela LSC associada a este ponto. Um filtro mapeia vários pontos físicos em um ponto lógico.'
        ],
        ['VLINIC', 'Valor inicial do ponto'],
        [
          'UAPL',
          'UAPL - Indica se o ponto é selecionado (SIM) para compor planilha de Histórico Simplificado (.csv) gerada em ARQS pelo módulo hist do SAGE, ou não (NAO).'
        ],
        ['OBSRV', 'Observações sobre o ponto analógico.'],
        [
          'OCR',
          '''Identificador da primeira ocorrência definida consecutivamente na entidade OCR, obedecem a ordem:
            \n1. Retornou a região normal
            \n2. Ultrapassou a região de advertência superior
            \n3. Ultrapassou a região de urgência superior
            \n4. Atingiu limite superior de escala
            \n5. Ultrapassou a região de advertência inferior
            \n6. Ultrapassou a região de urgência inferior
            \n7. Atingiu limite inferior de escala
            \n8. Retornou a região superior de advertência
            \n9. Retornou a região superior de urgência
            \n10. Retornou a região inferior de advertência
            \n11. Retornou a região inferior de urgência'''
        ],
        [
          'TAC',
          'Identificador da TAC à qual o ponto pertence. Define um relacionamento 1 → n entre a entidade TAC e a entidade PAS.'
        ],
        [
          'TCL',
          'Identificador do tipo de cálculo (TCL) usado para gerar este ponto. Esta chave só é preenchida se a medida for um ponto calculado, caso contrário é preenchido com nulo (NLCL).'
        ],
      ],
      //PTS
      [
        ['ID', 'Identificador da medida.'],
        [
          'ALRIN',
          'Indica se o alarme do ponto deve ser inibido (SIM) ou não (NAO).'
        ],
        [
          'ALINT',
          'Indica se deve (SIM) ou não (NAO) ser gerado alarme do ponto na inicialização e em qualquer outra transição de ponto inválido para válido.'
        ],
        [
          'CDINIC',
          '''Indica a condição do ponto. Pode assumir os seguintes valores:
            \nNORMAL - ponto em varredura e não manual;
            \nMANUAL - ponto com varredura inibida e manual;
            \nNAOSUP - ponto não supervisionado, ou seja, não existe configuração física para este ponto.'''
        ],
        [
          'EQP',
          'Equipamento associado. Na base de dados SCADA este atributo é deixado em branco.'
        ],
        [
          'SELSD',
          'Indica se o valor deste ponto ao ser distribuído deve ser (SIM) o aquisitado ou (NÃO) o considerado.'
        ],
        [
          'LSE',
          'Limite superior de escala do medidor em unidades de engenharia.'
        ],
        ['LSA', 'Limite superior de advertência em unidades de engenharia.'],
        ['LSU', 'Limite superior de urgência em unidades de engenharia.'],
        ['NOME', 'Descrição do ponto por extenso.'],
        [
          'TIPO',
          '''Tipo da grandeza medida. Pode assumir os seguintes valores:
            \nMWH -potência ativa por hora (energia);
            \nNIVEL - nível do reservatório;
            \nOUTROS - outros tipos de grandezas;
            \nPLUVI - precipitação pluviométrica.
            \nObs.: O preenchimento deste parametro é opcional'''
        ],
        [
          'TPEQP',
          'Tipo do equipamento onde se localiza a medida. O preenchimento não é obrigatório.'
        ],
      ],
      //PDS
      [
        ['ID', 'Identificador do ponto'],
        [
          'ALRIN',
          'Indica se o alarme do ponto deve ser inibido (SIM) ou não (NAO).'
        ],
        [
          'ALINT',
          'Indica se deve (SIM) ou não (NAO) ser gerado alarme do ponto na inicialização ou em qualquer outra transição de ponto inválido para ponto válido.'
        ],
        [
          'BDTR',
          'Indicador de que o ponto digital será incluído na Base de Tempo-Real.'
        ],
        [
          'CDINIC',
          '''Indica a condição do ponto. Pode assumir:
            \nNORMAL - ponto em varredura e não manual
            \nMANUAL - ponto com varredura inibida e manual. O valor inicial utilizado encontra-se no atributo STINI 
            \nNAOSUP - para esta configuração, vide OBS_NAOSUP'''
        ],
        [
          'EQP',
          'Equipamento associado. Na base de dados SCADA este atributo tem que ser deixado em branco.'
        ],
        [
          'SELSD',
          'Indica se o valor deste ponto ao ser distribuído deve ser (SIM) o aquisitado ou (NÃO) o considerado.'
        ],
        ['NOME', 'Descrição do ponto por extenso.'],
        [
          'STINI',
          'Indica o estado inicial do ponto, A - Aberto (zero) ou F - Fechado (um).'
        ],
        [
          'STNOR',
          'Indica o estado de referência do ponto, A - Aberto (zero) ou F - Fechado (um).'
        ],
        ['TIPO', 'Tipo do ponto. Preenchimento não obrigatório'],
        ['TPEQP', 'Tipo do equipamento. Preenchimento não obrigatório'],
        [
          'TPFIL',
          'Tipo do filtro, dentre aqueles implementados pelo conversor de protocolo, usado pela LSC associada a este ponto. O filtro mapeia vários pontos físicos em um ponto lógico.'
        ],
        [
          'UAPL',
          'Indicador de ponto selecionado (SIM) para aplicação do usuário ou não (NAO).'
        ],
        [
          'HISTSLC',
          'Indicador de ponto selecionado (default - SIM) para a base histórica ou não (NAO).'
        ],
        ['OBSRV', 'Observações sobre o ponto digital.'],
        [
          'OCR',
          '''Identificador da primeira ocorrência, sendo estas:
            \n1. Inconsistência → 1
            \n2. Inconsistência → 0
            \n3. 0 → 1 e 1 → 0
            \n4. 0→ 1
            \n5. 1→ 0
            \n6. 1→ 0 e 0 → 1'''
        ],
        ['TAC', 'Identificador da TAC à qual o ponto pertence.'],
        [
          'TCL',
          'Identificador do tipo de cálculo (TCL) usado para gerar esse ponto. Esta chave só é preenchida se o ponto digital for um cálculo, caso contrário é preenchido com NULO (NLCL). '
        ],
      ],
      //RCA
      [
        [
          'PNT',
          'Identificador do ponto calculado, aponta para PAS, PTS ou PDS.'
        ],
        [
          'PARC',
          'Identificador da parcela do cálculo, aponta para PAS, PTS ou PDS.'
        ],
        [
          'ORDEM',
          'Número seqüencial de 1 a n que ordena a parcela no cálculo. Onde n é o número de parcelas.'
        ],
        [
          'TIPOP',
          '''Tipo da parcela. Pode assumir:
            \nEDC - Estado Digital Considerado - é o estado corrente sendo usado pelo sistema, pode ser o aquisitado ou o manual.
            \nEDN - Estado de Trânsito.
            \nIED - Evento de Transição Instantânea em Estado Digital.
            \nIAA - Valor do Limite Inferior de Advertência do Analógico.
            \nIEA - Valor do Limite Inferior de Escala do Analógico.
            \nIUA - Valor do Limite Inferior de Urgência do Analógico.
            \nSAA - Valor do Limite Superior de Advertência do Analógico.
            \nSAT - Valor do Limite Superior de Advertência do Totalizador.
            \nSEA - Valor do Limite Superior de Escala do Analógico.
            \nSET - Valor do Limite Superior de Escala do Totalizador.
            \nSUA - Valor do Limite Superior de Urgência do Analógico.
            \nSUT - Valor do Limite Superior de Urgência do Totalizador.
            \nVAA - Valor da Varredura Anterior a Corrente do Analógico.
            \nVAC - Valor Corrente do Analógico que pode ser o aquisitado, o manual ou o estimado pela análise de redes.
            \nVTC - Valor Corrente do Totalizador que pode ser o aquisitado ou o manual.'''
        ],
        [
          'TPPARC',
          '''Tipo da parcela. Pode assumir:
            \nPAS - Se a parcela for analógico.
            \nPTS - Se a parcela for totalizado.
            \nPDS - Se a parcela for digital.'''
        ],
        [
          'TPPNT',
          '''Tipo do ponto calculado. Pode assumir:
            \nPAS - Se o ponto calculado for analógico.
            \nPTS - Se o ponto calculado for totalizado.
            \nPDS - Se o ponto calculado for digital.'''
        ]
      ],
      //TCL
      [
        ['ID', 'Identificador do cálculo.'],
        ['DESC', 'Descrição por extenso do cálculo.'],
        [
          'NSEQ',
          'Número seqüencial que endereça a rotina deste cálculo compilado. Para cálculos interpretados não precisa ser preenchido.'
        ],
        [
          'FORMULA',
          'Fórmula para tipos de cálculos estáticos interpretados, escrita em sintaxe LUA.'
        ],
      ],
      //PTC
      [
        ['ID', 'Identificador do patamar de carga.'],
        [
          'PAS',
          'Identificador do PAS que define o nível de carga do patamar para os pontos de tensão. O valor do PAS será utilizado para verificar a transição de patamar de carga.'
        ],
      ],
      //TCTL
      [
        ['ID', 'Identificador do tipo de controle.'],
        [
          'TIP',
          '''Tipos de comandos. Pode assumir os valores:
            \nCTL - Comandos do Sistema Elétrico (Controle Tempo Real)
            \nCMD - Comandos da Gestão da Comunicação de Dados
            \nALR_CLOSE - Texto para a ação do comando CLOSE no diálogo de controle.
            \nALR_TRIP - Texto para a ação do comando TRIP no diálogo de controle.
            \nDLG_CLOSE - Texto escolhido pelo usuário para ser exibido no diálogo de controle do comando CLOSE.
            \nDLG_TRIP - Texto escolhido pelo usuário para ser exibido no diálogo de controle do comando TRIP.
            \nNSEQ - Número que seqüência os tipos de ponto de controle.'''
        ],
      ],
      //TEMPO
      [
        [
          'ID',
          'Identificador que define a ordenação de pesquisa nas entradas da tabela de tempo utilizando o seguinte padrão T_xxx_yy, onde ‘xxx’ está no formato 001 a 999 e ‘yy’ no formato 01 a 99.'
        ],
        ['HORARIO', 'Descrição do horário'],
        [
          'PTC',
          'Identificador do patamar de carga associado ou o caractere ‘*’ indicando que a entrada da tabela de tempo está associada a todos os PTCs'
        ],
      ],
      //GRUPO
      [
        [
          'ID',
          'Identificador do grupo de componentes para diálogo automático.'
        ],
        ['NOME', 'Nome do grupo de componentes para diálogo automático.'],
        [
          'APLIC',
          '''Identifica o processo do SAGE que vai utilizar este grupo de componentes para diálogo automático. Pode assumir:
            \nVTELAS - Para o Visor de Telas
            \nREGCOND - para o Registrador Condicional
            \nCOR - Cor de fundo do diálogo associado ao grupo.
            \nTIPO - Tipo do grupo. Pode assumir os seguintes valores:
            \nCONTRL - Controle
            \nDIAG - Diagnóstico
            \nINTER - Interravamento
            \nOUTROS - diálogos com informações de um equipamento (default).'''
        ],
        [
          'TPPNT',
          '''Tipo de componente principal do grupo para diálogo automático. Pode assumir:
            \nCGS - Controle Geral do SAC
            \nGRUPO - Grupo de componentes para diálogo automático
            \nPAS - Ponto Analógico do SAC
            \nPDS - Ponto Digital do SAC
            \nPTS - Ponto Totalizado do SAC'''
        ],
        [
          'PNT',
          'Identificador do componente principal do grupo de componentes para diálogo automático. Dependendo do atributo TPPNT aponta para CGS, GRUPO, PAS, PDS ou PTS.'
        ],
      ],
      //GRCMP
      [
        ['TXT', 'Texto a ser inserido.'],
        [
          'ACAO',
          'Ação associada ao componente. Atributo reservado para uso futuro.'
        ],
        [
          'CORTXT',
          'Cor definida no arquivo de configuração de cores SigPaleta.dat para o texto associado ao componente no subdiálogo.'
        ],
        ['ORDEM1', 'Configura a linha da janela do pop-up'],
        ['ORDEM2', 'Configura a coluna da janela do pop-up'],
        [
          'TPPNT',
          '''Tipo de recurso associado ao componente para diálogo automático. Pode assumir:
            \nCGS - Controle Geral do SAC
            \nGRUPO - Grupo de componentes para diálogo automático
            \nPAS - Ponto Analógico do SAC
            \nPDS - Ponto Digital do SAC
            \nPTS - Ponto Totalizado do SAC'''
        ],
        [
          'TPSIMB',
          '''Modo de apresentação de componente digital. Este atributo só será utilizado se o atributo TPPNT= PDS. Pode assumir:
            \nCHECK - Marcador de acompanhamento (1 =  tique/0 =  X).
            \nCHECK_INV - Marcador Invertido (0 =  tique/1 =  X).
            \nESTADO - Texto com o estado atual.
            \nFIGURA - Figura representando o ponto.
            \nNULO - Sem símbolo.'''
        ],
        [
          'TPTXT',
          '''Tipo de texto associado ao componente. Pode assumir:
            \nID - Id do ponto.
            \nNOME - Narrativa do ponto.
            \nNULO - Sem descrição.
            \nTXT - Texto a ser inserido.'''
        ],
        [
          'GRUPO',
          'Identificador do grupo de diálogo automático ao qual o componente pertence. Define um relacionamento de 1 → n entre a entidade GRUPO e a entidade GRCMP.'
        ],
        ['PNT', 'Identificador do componente para diálogo automático.'],
      ],
    ],
  ),

  //Distribuição de Dados e Eventos
  SubSystem(
      subsystemName: 'Dist. de Dados e Eventos',
      subsystemDesc:
          'Analogamente ao Serviço de Aquisição e Controle, o Serviço de Distribuição de Dados e Eventos é, também, modelado através de LSCs de distribuição ou mistas. LSC está associada a uma CNF de distribuição ou mista. Os dados lógicos de distribuição de uma LSC são agrupados em TDDs (Terminais de Distribuição de Dados).',
      cardColor: Colors.deepPurple[200],
      entity: [
        'TDD',
        'PAD',
        'PTD',
        'PDD'
      ],
      entityName: [
        'Terminal de Distribuição de Dados',
        'Ponto Analógico de Distribuição',
        'Ponto Totalizado de Distribuição',
        'Ponto Digital de Distribuição'
      ],
      entityDesc: [
        'Define os grupos de pontos lógicos de distribuição de uma mesma funcionalidade',
        'Configura todos os pontos analógicos de distribuição de todas as TDDs de todas as LSCs de distribuição ou mistas.',
        'Configura todos os pontos totalizadores de distribuição de todas as TDDs de todas as LSCs de distribuição ou mistas.',
        'Configura todos os pontos digitais de distribuição de todas as TDDs e de todas as LSCs de distribuição ou mistas.'
      ],
      params: [
        //TDD
        [
          ['ID', 'Identificador do Terminal de Distribuição de Dados'],
          [
            'LSC',
            'Identificador da ligação virtual lógica associada à TDD. Define o relacionamento 1 → n entre a entidade LSC e a entidade TDD.'
          ],
        ],
        //PAD
        [
          ['ID', 'Identificador do ponto de distribuição analógico'],
          [
            'PAS',
            'Identificador do ponto de medição analógico lógico, associado ao ponto de distribuição. Define o relacionamento 1 → n entre a entidade PAS e a entidade PAD.'
          ],
          [
            'TDD',
            'Identificador do terminal de distribuição de dados ao qual o ponto de distribuição pertence. Define o relacionamento 1 → n entre aentidade TDD e a entidade PAD.'
          ]
        ],
        //PTD
        [
          ['ID', 'Identificador do ponto de distribuição totalizado'],
          [
            'PTS',
            'Identificador do ponto de medição de totalização lógico, associado ao ponto de distribuição. Define o relacionamento 1 → n entre a entidade PTS e a entidade PAD.'
          ],
          [
            'TDD',
            'Identificador do terminal de distribuição de dados ao qual o ponto de distribuição pertence. Define o relacionamento 1 → n entre aentidade TDD e a entidade PTD.'
          ]
        ],
        //PDD
        [
          ['ID', 'Identificador do ponto de distribuição digital'],
          [
            'PDS',
            'Identificador do ponto digital lógico associado ao ponto de distribuição. Define o relacionamento 1 → n entre a entidade PDS e a entidade PDD.'
          ],
          [
            'TDD',
            'Identificador do terminal de distribuição de dados ao qual o ponto de distribuição pertence. Define o relacionamento 1→n entre a entidade TDD e a entidade PDD.'
          ]
        ],
      ]),

  //Módulo de Tendências
  SubSystem(
      subsystemName: 'Módulo de Tendências',
      subsystemDesc: 'Configura a Tendência de medidas analógicas.',
      cardColor: Colors.red[200],
      entity: [
        'TND',
        'GRP'
      ],
      entityName: [
        'Tendência',
        'Grupo de Medidas'
      ],
      entityDesc: [
        'Configura a análise de tendência de medidas analógicas',
        'Define os grupos de medidas para tendências'
      ],
      params: [
        //TND
        [
          ['ID', 'Identificador da entidade de tendência.'],
          [
            'HORIZ',
            'Horizonte para análise de tendências de medidas analógicas, ou seja, numero de horas que as medidas tendenciáveis serão armazendas. Maximo de 24 horas.'
          ]
        ],
        //GRP
        [
          ['ID', 'Identificador do grupo de medidas para tendência.'],
          ['ORDEM', 'Ordem do grupo.'],
        ]
      ]),

  //Comunicação de Dados
  SubSystem(
      subsystemName: 'Comunicação de Dados',
      subsystemDesc:
          'O SCD implementa a comunicação de dados com Centros de Controle, Unidades Terminais Remotas (UTR), '
          'Controladores Lógicos Programáveis (CLP) e outros equipamentos e sistemas diretamente conectados ao sistema de gerenciamento de energia. '
          'O SCD está estruturado segundo o modelo OSI (Open System Interconnect) da ISO (International Standards Organization) onde, em cada nível,'
          ' são implementados as interfaces e os protocolos padronizados do nível, e são feitas as adaptações necessárias ao atendimento dos protocolos proprietários.',
      cardColor: Colors.deepOrange[200],
      entity: [
        'ENU',
        'CXU',
        'UTR',
        'TTP',
        'TCV',
        'GSD',
        'MUL',
        'ENM',
        'CNM'
      ],
      entityName: [
        //ENU
        'Enlace de Conexão com UTR',
        //CXU
        'Conexão de Comunicação com UTRs',
        //UTR
        'Unidade Terminal Remota',
        //TTP
        'Tipos de Transportadores de Protocolo',
        //TCV
        'Tipos de Transportadores de Protocolo',
        //GSD
        'Gateway Scada',
        //MUL
        'Multiligação em Protocolo X25-X75',
        //ENM
        'Enlace de Multiligação',
        //CNM
        'Canal Lógico de Multiligação X25-X75'
      ],
      entityDesc: [
        //ENU
        'Configura os enlaces (canais de comunicação) de todas as conexões de todos os gateways do sistema.',
        //CXU
        'Configura as conexões de comunicação dos gateways.',
        //UTR
        'Configura as UTRs de todas as conexões de todos os gateways do sistema, tanto as UTRs físicas para aquisição, como as virtuais para distribuição.',
        //TTP
        'Configura os transportadores de protocolo existentes no sistema.',
        //TCV
        'Tipos de Transportadores de Protocolo',
        //GSD
        'Configura os conversores de protocolo existentes no sistema.',
        //MUL
        'Configura as multiligações de todos os gateways do sistema.',
        //ENM
        'Configura os enlaces de todas as multiligações de todos os gateways do sistema.',
        //CNM
        'Configura os canais lógicos de todas as multiligações de todos o gateways do sistema.'
      ],
      params: [
        //ENU
        [
          ['ID', 'Identificador de enlace de UTR.'],
          ['VLUTR', 'Velocidade em bps do canal de comunicação.'],
          [
            'ORDEM',
            'Define se o ENU é o principal (PRI) ou o reserva (REV), desta configuração (CNF).'
          ],
          [
            'TDESC',
            'Descrito de acordo com o protocolo utilizado no Anexo correspondente.'
          ],
          [
            'TRANS',
            'Descrito de acordo com o protocolo utilizado no Anexo correspondente.'
          ],
          [
            'CXU',
            'Identificador da conexão de comunicação a que este ENU pertence. Define o relacionamento 1 → 2 entre a entidade CXU e entidade enlace (ENU).'
          ],
        ],
        //CXU
        [
          ['ID', 'Identificador da conexão'],
          ['INTGR', 'Sem descrição.'],
          [
            'FAILR',
            'Tempo em centésimos de segundo que o enlace reserva permanece primário até que ocorra um failover programado. Zero significa que não haverá failover programado.'
          ],
          [
            'FAILP',
            'Tempo em centésimos de segundo que o enlace principal permanece primário até que ocorra um failover programado. Zero significa que não haverá failover programado.'
          ],
          [
            'NFAIL',
            'Número máximo de tentativas de failover de enlace e de UTR.'
          ],
          [
            'SFAIL',
            'Tempo máximo em centésimos de segundo para aguardar o sincronismo das máquinas de estado dos dois enlaces de comunicação, sem o qual não é possível realizar o failover.'
          ],
          [
            'ORDEM',
            'Número seqüencial de 1 a n que define a ordem da conexão UTR (CXU) dentro do GSD.'
          ],
          ['AQANL', 'Sem descrição.'],
          ['AQPOL', 'Sem descrição.'],
          ['AQTOT', 'Sem descrição.'],
          [
            'GSD',
            'Identificador do gateway SCADA ao qual esta CXU pertence. Define o relacionamento 1 → n entre a entidade GSD e a entidade conexão (CXU).'
          ],
        ],
        //UTR
        [
          ['ID', 'Identificador da UTR'],
          [
            'ENUTR',
            'Endereço da UTR no canal em party line. Zero para UTR inexistente.'
          ],
          ['NTENT', 'Número de tentativas de comunicação com a remota.'],
          [
            'RESPT',
            'Tempo em centésimos de segundo para espera da resposta da UTR (timeout de recepção) para os protocolos REDAC, CONITEL e LN57.'
          ],
          [
            'ORDEM',
            'Define se a UTR é a principal (PRI) ou a reserva (REV), desta configuração (CNF).'
          ],
          [
            'CNF',
            'Identificador da configuração física a que esta UTR pertence. Define o relacionamento 1 → 2 entre a entidade CNF e a entidade UTR.'
          ],
          [
            'CXU',
            'Identificador da conexão a que esta UTR pertence. Define o relacionamento 1 → n entre a entidade CXU e a entidade UTR.'
          ],
        ],
        //TTP
        [
          ['ID', 'Identificador do Transportador do Protocolo.'],
          ['DESCR', 'Descrição do Transportador de Protocolo por extenso.'],
          [
            'NSEQ',
            'Número seqüencial utilizado como chave de ordenação para garantir a atribuição de valores numéricos simbólicos constantes. Consulte a entidade TCV para maiores detalhes.'
          ],
        ],
        //TCV
        [
          ['ID', 'Identificador do conversor de protocolo.'],
          ['DESCR', 'Descrição do Conversor de Protocolo por extenso.'],
          [
            'id',
            '''Número seqüencial utilizado como chave de ordenação para garantir a atribuição de valores numéricos simbólicos constantes. Podem assumir:
          \n0 NLCN Ausência de Conversor de Protocolo -
          \n1 CNVA Conversor SINSC Modo Mestre cno
          \n2 CNVB Conversor CONITEL C3x00 c32
          \n3 CNVC Conversor SINSC Modo Escravo cos
          \n4 CNVD Conversor Nulo Protocolo SAC cnul
          \n5 CNVE Conversor REDAC-70 Westinghouse rdac
          \n6 CNVF Conversor L&N IEC/60870-5 (LN57) ln57
          \n7 CNVG Conversor Siemens IEC/60870-5-101 (I101) i101
          \n8 CNVH Conversor DNP 3.0 dnp3
          \n9 CNVI Conversor ABB 1771/X3.28 abb
          \n10 CNVJ Conversor ModBus modb
          \n11 CNVK Conversor ALTUS AL - 1000 alts
          \n12 CNVL Conversor MicroLab mlab
          \n13 CNVM Conversor IEC/60870-5-104 i104
          \n14 CNVN Conversor TASE2/ICCP-MMS iccp
          \n15 CNVO Conversor IEC/61850 I61850
          \n16 CNVP Conversor Microlab-HLDC mlhd'''
          ],
        ],
        //GSD
        [
          ['ID', 'Identificador do Gateway.'],
          ['NOME', 'Descrição por extenso do gateway.'],
          [
            'NO1',
            '- Identificador do NOH da rede de difusão do SAGE que será o primeiro nó do gateway (principal).'
          ],
          [
            'NO2',
            'Identificador do NOH da rede de difusão do SAGE que será o segundo nó do gateway (reserva).'
          ],
        ],
        //MUL
        [
          ['ID', 'Identificador da multiligação'],
          [
            'ORDEM',
            'Número seqüencial de 1 a n que define a ordem da MUL dentro do GSD.'
          ],
          [
            'CNF',
            'Identificador da configuração física de aquisição e/ou distribuição atendida pelo centro de controle relacionado a estamultiligação.'
          ],
          [
            'GSD',
            'Identificador do gateway ao qual esta multiligação pertence.'
          ],
          ['GUARD', 'Sem descrição.'],
          ['JANEL', 'Sem descrição.'],
          ['LSIMP', 'Sem descrição.'],
          ['TRQML', 'Sem descrição.'],
          ['TRSTN', 'Sem descrição.'],
          ['VPROT', 'Sem descrição.'],
        ],
        //ENM
        [
          ['ID', 'Identificador do enlace de multiligação'],
          [
            'ORDEM',
            'Número seqüencial de 1 a n que define a ordem do enlace dentro da MUL.'
          ],
          [
            'MUL',
            'Identificador da multiligação a que o enlace pertence. Define o relacionamento 1 → n, onde n pode variar de 1 a 4, da entidade MUL com a entidade ENM.'
          ],
          ['ENPRI', 'Sem descrição.'],
          ['ENSEC', 'Sem descrição.'],
          ['JANLK', 'Sem descrição.'],
          ['PARN1', 'Sem descrição.'],
          ['PARN2', 'Sem descrição.'],
          ['PART1', 'Sem descrição.'],
          ['TECON', 'Sem descrição.'],
        ],
        //CNM
        [
          ['ID', 'Identificador do canal lógico'],
          [
            'ORDEM',
            'Número seqüencial de 1 a n que define a ordem do enlace dentro da MUL.'
          ],
          [
            'MUL',
            'Identificador da multiligação a que o canal lógico pertence. Define o relacionamento 1 → n entre a entidade MUL e a entidade CNM'
          ],
          ['JANMIN', 'Sem descrição.'],
          ['JANRX', 'Sem descrição.'],
          ['JANTX', 'Sem descrição.'],
          ['NMSXG', 'Sem descrição.'],
          ['PRIORI', 'Sem descrição.'],
          ['TMPRE', 'Sem descrição.'],
          ['TMPRX', 'Sem descrição.'],
          ['TMPTX', 'Sem descrição.'],
        ]
      ]),

  //Rede de Difusão Confiável
  SubSystem(
      subsystemName: 'Rede de Difusão Conf.',
      subsystemDesc:
          'Antes de fazer a configuração da rede do sistema, o usuário tem que decidir a arquitetura a ser utilizada,'
          ' isto é, quantas máquinas comporão a rede, quantas e quais serão utilizadas como interface gráfica, quantas e quais realizarão funções de '
          'comunicação.Depois disso, o usuário estará apto a configurar a Rede de Difusão Confiável que é responsável por manter a coerência dos dados replicados e o bom funcionamento dos processos na rede.',
      cardColor: Colors.green[200],
      entity: [
        'PRO',
        'INP',
        'NOH',
        'CTX',
        'SEV',
        'CXP',
        'INM',
        'SXP',
        'PRCT',
        'NOCT'
      ],
      entityName: [
        //PRO
        'Classe de Processo',
        //INP
        'Instância de Processo',
        //NOH
        'Nó da Rede',
        //CTX
        'Contexto',
        //SEV
        'Severidade',
        //CXP
        'Relacionamento de Classe de Processo x Classe de MCD',
        //INM
        'Relacionamento de Contexto x Classe de MCD',
        //SXP
        'Relacionamento de Severidade x Classe de Processo',
        //PRCT
        'Relacionamento Processo x Contexto',
        //NOCT
        'Relacionamento NOH x Contexto'
      ],
      entityDesc: [
        //PRO
        'Configura os processos do SAGE.',
        //INP
        'Um processo pode ser ativado em vários nós e cada uma dessas ativações define uma instância do processo. Esta entidade configura as instâncias de todos os processos do SAGE.',
        //NOH
        'Descreve os nós da rede de difusão confiável.',
        //CTX
        'Define o contexto em que o SAGE está sendo executado.',
        //SEV
        'Lista as severidades existentes no SAGE. Severidade é um grau de importância que se dá a uma falha ou evento, que vai definir a cor do registro de ocorrência nas listas de alarmes/eventos.',
        //CXP
        'Este relacionamento é feito para as MCDs que o sistema exige que sejam mantidas abertas sempre em pelo menos dois nós.',
        //INM
        'Especifica o relacionamento n → m entre a entidade CTX e a entidade classe de MCD.',
        //SXP
        'Define para cada processo um limite tolerado de erros e eventos que ele pode gerar, classificados por severidade.',
        //PRCT
        'Relaciona os processos ao contexto.',
        //NOCT
        'Relaciona os nós ao contexto.'
      ],
      params: [
        //PRO
        [
          ['NOME', 'Descrição do processo por extenso.'],
          [
            'ID',
            '''Identificador da classe de processo sendo configurado. Os processos obrigatórios devem seguir a ordem a seguir, os não obrigatórios não precisam.
          \nOBRIGATÓRIOS:
          \n1 mcast - multicast confiável.
          \n2 gmcd - gerenciador das memórias compartilhadas distribuídas.
          \n3 rarqd - servidor de Replicação de Arquivos.
          \n4 alr - serviço de alarmes e eventos; apenas uma cópia deve estar ativa na rede.
          \n5 mscd - monitorador do Subsistema de Comunicação de Dados (SCD); apenas uma cópia precisa estar ativa na rede.
          \n6 sac - serviço de aquisição e controle; será lançado em todas as estações usadas para aquisição de dados de UTRs ou Centros de Controle.
          \n7 sdd - serviço de distribuição; será lançado em todas as estações usadas para distribuição de dados para outros níveis hierárquicos.
          \n8 calc - processador de cálculos; será lançado nas estações previamente configuradas com essa função.
          \n9 hist - histórico de dados do sistema; apenas uma cópia precisa estar ativa na rede.
          \n10 serv - serviço do SAGE para ligação com ambiente windows; pode ser configurado para ser lançado em qualquer estação ou grupo de estações da rede.
          \n11 DumpBd - Dump da Base de Tempo Real.
          \n12 STI_cargbh - grava dados históricos em banco relacional.
          \n-----   -----   -----
          \nNÃO OBRIGATÓRIOS:
          \nabb - Conversor do protocolo AB1771/X3.28.
          \nalts - Conversor do Protocolo ALTUS AL-100.
          \ncno - Conversor SINSC Modo Mestre.
          \ncnul - Conversor Nulo Protocolo SAC
          \ncos - Conversor SINSC Modo Escravo.
          \nc32 - Conversor CONITEL - C3x00.
          \ndnp3 - Conversor do Protocolo DNP V3.00.
          \ni101 - Conversor IEC/60870-5-101.
          \ni104 - Conversor IEC/60870-5-104.
          \nmlab - Conversor do Protocolo MicroLab.
          \nmodb - Conversor do Protocolo ModBus.
          \nln57 - Conversor L&N IEC/60870-5.
          \nrdac - Conversor REDAC-70 Westinghouse.'''
          ],
          [
            'ATIVA',
            '''Determina a maneira que o processo deve ser ativado. Pode assumir os seguintes valores:
          \nCAD - o processo é ativado em todos os nós onde está cadastrado na entidade INP (instância de processo)
          \nPRS - o processo é ativado somente no primeiro nó que entrar em serviço, dentre os cadastrados, e permanece nesse nó a menos que ele saia de serviço. Quando isso acontece, ele é ativado no primeiro nó cadastrado que estiver em serviço
          \nPRP - igual ao caso anterior, só que existe uma prioridade, isto é, se um nó cadastrado, mais prioritário, entra em serviço o processo migra para ele
          \nHOP - o processo é carregado em todos os nós cadastrados que estiverem em serviço, mas só é executado no mais prioritário, os outros ficam em hot stand by. Caso um nó mais prioritário entre em serviço a execução do processo migra para este nó
          \nHOS - igual ao caso anterior só que sem prioridade, isto é, a execução do processo só migra se o nó onde ele está sendo executado sair de serviço.'''
          ],
          [
            'ATVAT',
            'Determina se o processo vai ser ativado pelo GCD, modo automático (AUT) ou pelo próprio usuário, modo manual (MAN).'
          ],
          ['ESSEN', 'Indica se o processo é essencial (ESC) ou não (NES).'],
          [
            'HORAA',
            'Especifica em segundos a hora da primeira ativação do processo (hora x 60 x 60 + minutos x 60 + segundos) para o caso do mesmo ser configurado para ser lançado numa hora marcada (atributo TIPPR desta entidade =  HORAM). 0 (zero) significa meia-noite.'
          ],
          [
            'MONIT',
            'Indica se o processo deve ser monitorado pelo GCD (MON) ou não (NMO).'
          ],
          [
            'NUATV',
            'Número de tentativas de ativação do processo pelo GCD em caso de falha.'
          ],
          [
            'PERIO',
            'Periodicidade de ativação do processo. Zero para não ativação periodicamente'
          ],
          [
            'SCRDE',
            'Nome do arquivo de script a ser executado na desativação do  processo.'
          ],
          [
            'SCRDS',
            'Nome do arquivo de script de desativação do processo a ser executado quando o mesmo está rodando em um nó secundário e está sendo desativado para migrar para o nó primário. Caso este campo não seja especificado é utilizado o arquivo configurado em SCRDE.'
          ],
          [
            'SCRAT',
            'Nome do arquivo de script a ser executado na ativação do processo.'
          ],
          [
            'SCRRE',
            'Nome do arquivo de script de ativação do processo a ser executado quando o mesmo está sendo ativado em um nó primário, migrando de um nó secundário. Caso este campo não seja especificado é utilizado o arquivo configurado em SCRAT.'
          ],
          [
            'TINIC',
            'Ordem para o lançamento do processo depois do lançamento do GCD'
          ],
          [
            'TIPPR',
            '''Indica o tipo da primeira ativação do processo. Pode assumir:
          \nINSS - o processo é lançado imediatamente após o GCD;
          \nINSP - o processo é lançado na ordem, especificada em TINIC, depois do lançamento do GCD. O GCD garante que um processo só é lançado depois do processo anterior ter se habilitado para o GCD (SHabilitP);
          \nMINC - o processo é lançado no primeiro minuto cheio após o intervalo de tempo TINIC;
          \nHORAC - o processo é lançado na primeira hora cheia após o intervalo de tempo TINIC;
          \nHORAM - o processo é lançado na hora marcada especificada em HORAA.'''
          ],
          [
            'WATCHDOG',
            'Período (em segundos) para atualização do watch-dog do  processo.'
          ],
        ],
        //INP
        [
          [
            'ORDEM',
            'Número seqüencial de 1 a n que define a prioridade do nó na ativação do processo, sendo que os números menores são os mais prioritários.'
          ],
          [
            'NOH',
            'Identificador do nó em que esta instância do processo vai ser executada. Define o relacionamento 1 → n entre a entidade NOH a entidade INP.'
          ],
          [
            'PRO',
            'Identificador da classe de processo à qual esta instância pertence. Define o relacionamento 1 → n entre a entidade PRO e aentidade INP.'
          ]
        ],
        //NOH
        [
          ['ID', 'Identificador do nó por extenso.'],
          ['NOME', 'Descrição do nó por extenso'],
          [
            'ENDIP',
            'Endereço IP do nó na rede, que deve ser igual ao definido na instalação do sistema operacional para este nó.'
          ],
          [
            'NTATV',
            'Número de tentativas que devem ser feitas pelo GCD em caso de falha para ativar este nó.'
          ],
          [
            'TPNOH',
            '''Tipo de nó do sistema.  Pode apresentar as seguintes configurações:
          \nSERVIDOR - máquina utilizada para a execução dos processos SCADA do SAGE.
          \nCONSOLE - máquina utilizada para a execução da IHM.
          \nTRANSPORTE - máquina utilizada para execução dos transportadores de protocolo do SAGE.'''
          ],
        ],
        //CTX
        [
          ['ID', 'Identificador do contexto.'],
          ['NOME', 'Descrição por extenso do contexto.'],
        ],
        //SEV
        [
          [
            'ID',
            '''ID - Identificador da severidade. As severidades existentes atualmente no sistema são:
          \nNORML - normal, apenas para informação;
          \nADVER - advertência;
          \nURGEN - urgência;
          \nFATAL - fatal, é a severidade mais grave;
          \nSNULA - nulo; (Prática: Se esta opção for usada o ponto não subirá para Alarme e para SOE)
          \nPANIC - pânico.
          \nNOME - Descrição da severidade por extenso.'''
          ],
        ],
        //CXP
        [
          [
            'CLASSE',
            '''Identificador da classe de MCD. As classes de MCD existentes atualmente na base de dados SCADA do SAGE são:
          \nSCD_ClasSac
          \nSCD_ClasSdd
          \nSCD_ClasIds
          \nSCD_ClasIdf
          \nSCD_ClasIdd
          \nSSC_ClasCat
          \nSSC_ClasGmcd
          \nSSC_ClasEve
          \nSSC_ClasSsc
          \nSSC_ClasTnd
          \nSSC_ClasAlr'''
          ],
          ['PRO', 'Identificador da classe de processo.'],
        ],
        //INM
        [
          ['CLASSE', 'Identificador da classe de MCD.'],
          ['CTX', 'Identicador do contexto.'],
          [
            'TIPCO',
            '''Tipo de controle para classe de MCD. Pode assumir:
          \nNOR - Normal, a MCD fica sempre aberta em dois nós.
          \nESP - Especial, a MCD fica aberta em dois nós a pedido da aplicação.'''
          ],
        ],
        //SXP
        [
          ['PRO', 'Identificador da Classe de Processo.'],
          ['SEV', 'Identificador da Severidade do Evento.'],
          [
            'NFALS',
            'Número de falhas permitidas para uma severidade em um processo sem que o GCD desative esse processo. Se for zero o GCD nunca desativará esse processo devido a falhas dessa severidade.'
          ],
        ],
        //PRCT
        [
          ['CTX', 'Identificador do contexto'],
          ['PRO', 'Identificador do processo'],
          [
            'ATIVAT',
            '''Indicador de ativação do processo nesse contexto. Pode assumir:
          \nAUT - automático;
          \nMAN - manual;
          \nNAO - processo não ativado.'''
          ]
        ],
        //NOCT
        [
          ['CTX', 'Identificador do contexto'],
          ['NOH', 'Identificador do NOH'],
        ],
      ])
];
