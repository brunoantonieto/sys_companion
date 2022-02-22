import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ANSI{
  String number;
  String name;
  String subname;

  ANSI({
    this.number,
    this.name,
    this.subname
  });
}

final List<ANSI> ansiList = <ANSI>[
  ANSI(
    number: '01',
    name: 'Elemento Principal',
    subname: null,
  ),
  ANSI(
    number: '02',
    name: 'Relé de Partida',
    subname: 'ou fechamento temporizado',
  ),
  ANSI(
    number: '03',
    name: 'Relé de Verificação',
    subname: null,
  ),
  ANSI(
    number: '04',
    name: 'Contador Principal',
    subname: null,
  ),
  ANSI(
    number: '05',
    name: 'Dispositivo de Interrupção',
    subname: null,
  ),
  ANSI(
    number: '06',
    name: 'Disjuntor de Partida',
    subname: null,
  ),
  ANSI(
    number: '07',
    name: 'Relé de Taxa de Variação',
    subname: null,
  ),
  ANSI(
    number: '08',
    name: 'Dispositivo de Desligamento da Energia de Controle',
    subname: null,
  ),
  ANSI(
    number: '09',
    name: 'Dispositivo de Reversão',
    subname: null,
  ),
  ANSI(
    number: '10',
    name: 'Chave Comutadora de Sequências das Unidades',
    subname: null,
  ),
  ANSI(
    number: '11',
    name: 'Dispositivo Multifunção',
    subname: null,
  ),
  ANSI(
    number: '12',
    name: 'Dispositivo de Sobrevelocidade',
    subname: null,
  ),
  ANSI(
    number: '13',
    name: 'Dispositivo de Rotação Síncrona',
    subname: null,
  ),
  ANSI(
    number: '14',
    name: 'Dispositivo de Subvelocidade',
    subname: null,
  ),
  ANSI(
    number: '15',
    name: 'Dispositivo de Ajuste',
    subname: 'ou comparação de velocidade/frequência',
  ),
  ANSI(
    number: '16',
    name: 'Dispositivo de Comunicação de Dados',
    subname: null,
  ),
  ANSI(
    number: '17',
    name: 'Chave de Derivação',
    subname: null,
  ),
  ANSI(
    number: '18',
    name: 'Dispositivo de Desaceleração',
    subname: null,
  ),
  ANSI(
    number: '19',
    name: 'Contador de Transição de Partida-Marcha',
    subname: null,
  ),
  ANSI(
    number: '20',
    name: 'Válvula Operada Eletricamente',
    subname: null,
  ),
  ANSI(
    number: '21',
    name: 'Relé de Distância',
    subname: null,
  ),
  ANSI(
    number: '22',
    name: 'Disjuntor de Equalizador',
    subname: null,
  ),
  ANSI(
    number: '23',
    name: 'Dispositivo de Controle de Temperatura',
    subname: null,
  ),
  ANSI(
    number: '24',
    name: 'Relé de Sobre-Excitação',
    subname: 'ou Voltz por Hertz',
  ),
  ANSI(
    number: '25',
    name: 'Relé de Verificação de Sincronismo',
    subname: 'ou sincronização',
  ),
  ANSI(
    number: '26',
    name: 'Dispositivo Térmico do Equipamento',
    subname: null,
  ),
  ANSI(
    number: '27',
    name: 'Relé de Subtensão',
    subname: null,
  ),
  ANSI(
    number: '28',
    name: 'Detector de Chama',
    subname: null,
  ),
  ANSI(
    number: '29',
    name: 'Contador de Isolamento',
    subname: null,
  ),
  ANSI(
    number: '30',
    name: 'Relé Anunciador',
    subname: null,
  ),
  ANSI(
    number: '31',
    name: 'Dispositivo Anunciador',
    subname: null,
  ),
  ANSI(
    number: '32',
    name: 'Relé Direcional de Potência',
    subname: null,
  ),
  ANSI(
    number: '33',
    name: 'Chave de Posicionamento',
    subname: null,
  ),
  ANSI(
    number: '34',
    name: 'Dispositivo Master de Sequência',
    subname: null,
  ),
  ANSI(
    number: '35',
    name: 'Dispositivo para Operação das Escovas',
    subname: 'ou curto-circuitar anéis coletores',
  ),
  ANSI(
    number: '36',
    name: 'Dispositivo de Polaridade',
    subname: 'ou polarização',
  ),
  ANSI(
    number: '37',
    name: 'Relé de Subcorrente',
    subname: 'ou subpotência',
  ),
  ANSI(
    number: '38',
    name: 'Dispositivo de Proteção de Mancal',
    subname: null,
  ),
  ANSI(
    number: '39',
    name: 'Monitor de Condições Mecânicas',
    subname: null,
  ),
  ANSI(
    number: '40',
    name: 'Relé de Perda de Excitação',
    subname: 'ou relé de perda de campo',
  ),
  ANSI(
    number: '41',
    name: 'Disjuntor ou Chave de Campo',
    subname: null,
  ),
  ANSI(
    number: '42',
    name: 'Disjuntor',
    subname: 'ou chave de operação normal',
  ),
  ANSI(
    number: '43',
    name: 'Dispositivo de Transferência',
    subname: 'ou seleção manual',
  ),
  ANSI(
    number: '44',
    name: 'Relé de Sequência de Partida',
    subname: null,
  ),
  ANSI(
    number: '45',
    name: 'Monitor de Condições Atmosféricas',
    subname: null,
  ),
  ANSI(
    number: '46',
    name: 'Relé de Reversão de Corrente',
    subname: 'ou desbalanceamento de corrente',
  ),
  ANSI(
    number: '47',
    name: 'Relé de Reversão de Tensão',
    subname: 'ou desbalanceamento de tensão',
  ),
  ANSI(
    number: '48',
    name: 'Relé de Sequência incompleta',
    subname: 'ou partida longa',
  ),
  ANSI(
    number: '49',
    name: 'Relé Térmico',
    subname: null,
  ),
  ANSI(
    number: '50',
    name: 'Relé de Sobrecorrente Instantâneo',
    subname: null,
  ),
  ANSI(
    number: '50N',
    name: '50 Neutro',
    subname: null,
  ),
  ANSI(
    number: '50G',
    name: '50 Terra',
    subname: 'comumente chamado 50GS e com tempo definido ou curvas inversas',
  ),
  ANSI(
    number: '50PAF',
    name: '50 Fase Instantânea de Alta Velocidade para Detecção de Arco Voltaico',
    subname: null,
  ),
  ANSI(
    number: '50NAF',
    name: '50 Neutro Instantânea de Alta Velocidade para Detecção de Arco Voltaico',
    subname: null,
  ),
  ANSI(
    number: '50BF',
    name: 'Relé de Proteção Contra Falha de Disjuntor',
    subname: 'também chamado de 50/62 BF',
  ),
  ANSI(
    number: '51',
    name: 'Relé de Sobrecorrente Temporizado',
    subname: null,
  ),
  ANSI(
    number: '51N',
    name: '51 Neutro',
    subname: 'tempo definido ou curvas inversas',
  ),
  ANSI(
    number: '51G',
    name: '51 Terra',
    subname: 'comumente chamado de 51GS e com tempo definido ou curvas inversas',
  ),
  ANSI(
    number: '51Q',
    name: '51 de Sequência Negativa',
    subname: 'e com tempo definido ou curvas inversas',
  ),
  ANSI(
    number: '51V',
    name: 'Relé de Sobrecorrente com Restrição de Tensão',
    subname: null,
  ),
  ANSI(
    number: '51C',
    name: 'Relé de Sobrecorrente com Controle de Torque',
    subname: null,
  ),
  ANSI(
    number: '52',
    name: 'Disjuntor de Corrente Alternada',
    subname: null,
  ),
  ANSI(
    number: '53',
    name: 'Relé para Excitatriz',
    subname: 'ou gerador CC',
  ),
  ANSI(
    number: '54',
    name: 'Dispositivo de Acoplamento',
    subname: null,
  ),
  ANSI(
    number: '55',
    name: 'Relé de Fator de Potência',
    subname: null,
  ),
  ANSI(
    number: '56',
    name: 'Relé de Aplicação de Campo',
    subname: null,
  ),
  ANSI(
    number: '57',
    name: 'Dispositivo de Aterramento',
    subname: 'ou curto-circuito',
  ),
  ANSI(
    number: '58',
    name: 'Relé de Falha de Retificação',
    subname: null,
  ),
  ANSI(
    number: '59',
    name: 'Relé de Sobretensão',
    subname: null,
  ),
  ANSI(
    number: '59Q',
    name: '59 de Sequência Negativa',
    subname: null,
  ),
  ANSI(
    number: '59N',
    name: '59 Neutro',
    subname: 'ou sobretensão residual (também chamado de 64G), calculado ou TP em delta aberto',
  ),
  ANSI(
    number: '60',
    name: 'Relé de Balanço de Corrente/Tensão',
    subname: null,
  ),
  ANSI(
    number: '61',
    name: 'Sensor de Densidade',
    subname: null,
  ),
  ANSI(
    number: '62',
    name: 'Relé Temporizador',
    subname: null,
  ),
  ANSI(
    number: '63',
    name: 'Relé de Pressão de Gás',
    subname: 'Buchholz',
  ),
  ANSI(
    number: '64',
    name: 'Relé Detetor de Terra',
    subname: null,
  ),
  ANSI(
    number: '64N',
    name: '64 Direcional de Neutro',
    subname: null,
  ),
  ANSI(
    number: '64G',
    name: '64 Direcional de Terra',
    subname: null,
  ),
  ANSI(
    number: '64Q',
    name: '64 Direcional de Sequência Negativa',
    subname: null,
  ),
  ANSI(
    number: '65',
    name: 'Regulador',
    subname: null,
  ),
  ANSI(
    number: '66',
    name: 'Relé de Supervisão do Número de Partidas',
    subname: null,
  ),
  ANSI(
    number: '67',
    name: 'Relé Direcional de Sobrecorrente',
    subname: null,
  ),
  ANSI(
    number: '68',
    name: 'Relé de Bloqueio por Oscilação de Potência',
    subname: null,
  ),
  ANSI(
    number: '69',
    name: 'Dispositivo de Controle Permissivo',
    subname: null,
  ),
  ANSI(
    number: '70',
    name: 'Reostato',
    subname: null,
  ),
  ANSI(
    number: '71',
    name: 'Dispositivo de Detecção de Nível',
    subname: null,
  ),
  ANSI(
    number: '72',
    name: 'Disjuntor de Corrente Contínua',
    subname: null,
  ),
  ANSI(
    number: '73',
    name: 'Contator de Resistência de Carga',
    subname: null,
  ),
  ANSI(
    number: '74',
    name: 'Relé de Alarme',
    subname: null,
  ),
  ANSI(
    number: '75',
    name: 'Mecanismo de Mudança de Posição',
    subname: null,
  ),
  ANSI(
    number: '76',
    name: 'Relé de Sobrecorrente CC',
    subname: null,
  ),
  ANSI(
    number: '77',
    name: 'Dispositivo de Telemediação',
    subname: null,
  ),
  ANSI(
    number: '78',
    name: 'Relé de Medição de Ângulo de Fase',
    subname: 'ou proteção contra falta de sincronismo',
  ),
  ANSI(
    number: '79',
    name: 'Relé de Religamento',
    subname: null,
  ),
  ANSI(
    number: '80',
    name: 'Chave de Fluxo',
    subname: null,
  ),
  ANSI(
    number: '81',
    name: 'Relé de Frequência',
    subname: 'subfrequência ou sobrefrequência',
  ),
  ANSI(
    number: '82',
    name: 'Relé de Religamento de Carga CC',
    subname: null,
  ),
  ANSI(
    number: '83',
    name: 'Relé de Seleção',
    subname: 'ou transferência automatica',
  ),
  ANSI(
    number: '84',
    name: 'Mecanismo de Operação',
    subname: null,
  ),
  ANSI(
    number: '85',
    name: 'Relé Receptor de Sinal de Telecomunicação',
    subname: 'teleproteção',
  ),
  ANSI(
    number: '86',
    name: 'Relé Auxiliar de Bloqueio',
    subname: null,
  ),
  ANSI(
    number: '87',
    name: 'Relé de Proteção Diferencial',
    subname: 'o 87 existe em varias maneiras, com um sufixo para mostrar qual equipamento está protegendo',
  ),
  ANSI(
    number: '88',
    name: 'Motor Auxilar',
    subname: 'ou motor gerador',
  ),
  ANSI(
    number: '89',
    name: 'Chave Seccionadora',
    subname: null,
  ),
  ANSI(
    number: '90',
    name: 'Dispositivo de Regulação',
    subname: 'regulador de tensão',
  ),
  ANSI(
    number: '91',
    name: 'Relé Direcional de Tensão',
    subname: null,
  ),
  ANSI(
    number: '92',
    name: 'Relé Direcional de Tensão e Potência',
    subname: null,
  ),
  ANSI(
    number: '93',
    name: 'Contador de Variação de Campo',
    subname: null,
  ),
  ANSI(
    number: '94',
    name: 'Relé de Desligamento',
    subname: null,
  ),
  ANSI(
    number: '95',
    name: 'Usado para Aplicações Específicas',
    subname: null,
  ),
  ANSI(
    number: '96',
    name: 'Relé Auxiliar de Bloqueio de Barra',
    subname: null,
  ),
  ANSI(
    number: '97',
    name: 'Usado para Aplicações Específicas',
    subname: null,
  ),
  ANSI(
    number: '98',
    name: 'Usado para Aplicações Específicas',
    subname: null,
  ),
  ANSI(
    number: '99',
    name: 'Usado para Aplicações Específicas',
    subname: null,
  ),
  ANSI(
    number: '150',
    name: 'Indicador de Falta à Terra',
    subname: null,
  ),
];