import 'dart:math';

import 'package:flutter/material.dart';

class HomepageController {
  int pontos = 0;
  int recorde = 0;
  late int aleatorio;
  Color corPadrao = Colors.blue[100]!;
  String statusResposta = '';
  final TextEditingController significado = TextEditingController();

 

  HomepageController() {
    aleatorio = Random().nextInt(pergunta.length);
    print(aleatorio);
    print('${pergunta.length}');
  }

void verificarResposta() {
  // Verifica se a resposta do usuário está presente em qualquer uma das respostas corretas
  if (pergunta[aleatorio]["respostas corretas"].contains(significado.text.toLowerCase().trim())) {
    statusResposta = 'Acertou!';
    corPadrao = Colors.greenAccent;
    pontos++;
  }else if (significado.text.isEmpty) {
    statusResposta = 'Digite algo!';
    corPadrao = const Color.fromARGB(255, 219, 167, 8);
  }else {
    statusResposta = 'Errou!';
    corPadrao = const Color.fromARGB(255, 245, 102, 102);
    pontos = 0;
  }

  // Atualiza o recorde
  recordePontos();

  // Restaura a cor e o status da resposta após 1 segundo
  Future.delayed(const Duration(seconds: 1), () {
    corPadrao = Colors.blue[100]!;
    statusResposta = '';
  });
}

  // Método para verificar o recorde
  void recordePontos() {
    if (pontos > recorde) {
      recorde = pontos;
    }
  }

    List<Map<String, dynamic>> pergunta = [                           
    {
      "pergunta": "to want",
      "respostas corretas": ['querer'],
    },
    {
      "pergunta": "to eat",
      "respostas corretas": ['comer'],
    },
    {
      "pergunta": "to drink",
      "respostas corretas": ['beber'],
    },
    {
      "pergunta": "to buy",
      "respostas corretas": ['comprar'],
    },
    {
      "pergunta": "to have",
      "respostas corretas": ['ter'],
    },
    {
      "pergunta": "to like",
      "respostas corretas": ['gostar'],
    },
    {
      "pergunta": "to need",
      "respostas corretas": ['precisar'],
    },
    {
      "pergunta": "to sell",
      "respostas corretas": ['vender'],
    },
    {
      "pergunta": "to go",
      "respostas corretas": ['ir'],
    },
    {
      "pergunta": "to live",
      "respostas corretas": ['morar'],
    },
    {
      "pergunta": "to love",
      "respostas corretas": ['amar'],
    },
    {
      "pergunta": "to make",
      "respostas corretas": ['fazer'],
    },
    {
      "pergunta": "to organize",
      "respostas corretas": ['organizar'],
    },
    {
      "pergunta": "to prefer",
      "respostas corretas": ['preferir'],
    },
    {
      "pergunta": "to cook",
      "respostas corretas": ['cozinhar'],
    },
    {
      "pergunta": "to go out",
      "respostas corretas": ['sair para passear'],
    },
    {
      "pergunta": "to hate",
      "respostas corretas": ['odiar'],
    },
    {
      "pergunta": "to know",
      "respostas corretas": ['conhecer'],
    },
    {
      "pergunta": "to listen to",
      "respostas corretas": ['ouvir'],
    },
    {
      "pergunta": "to play",
      "respostas corretas": ['brincar', 'jogar', 'tocar'],
    },
    {
      "pergunta": "to speak",
      "respostas corretas": ['falar'],
    },
    {
      "pergunta": "to work",
      "respostas corretas": ['trabalhar'],
    },
    {
      "pergunta": "to call",
      "respostas corretas": ['ligar'],
    },
    {
      "pergunta": "to read",
      "respostas corretas": ['ler'],
    },
    {
      "pergunta": "to study",
      "respostas corretas": ['estudar'],
    },
    {
      "pergunta": "to talk",
      "respostas corretas": ['conversar'],
    },
    {
      "pergunta": "to try",
      "respostas corretas": ['tentar'],
    },
    {
      "pergunta": "to watch",
      "respostas corretas": ['assistir'],
    },
    {
      "pergunta": "to write",
      "respostas corretas": ['escrever'],
    },
    {
      "pergunta": "to arrive",
      "respostas corretas": ['chegar'],
    },
    {
      "pergunta": "to attend",
      "respostas corretas": ['frequentar'],
    },
    {
      "pergunta": "to clean",
      "respostas corretas": ['limpar'],
    },
    {
      "pergunta": "to fix",
      "respostas corretas": ['arrumar'],
    },
    {
      "pergunta": "to help",
      "respostas corretas": ['ajudar'],
    },
    {
      "pergunta": "to invite",
      "respostas corretas": ['convidar'],
    },
    {
      "pergunta": "to move",
      "respostas corretas": ['mudar'],
    },
    {
      "pergunta": "to offer",
      "respostas corretas": ['oferecer'],
    },
    {
      "pergunta": "to order",
      "respostas corretas": ['pedir'],
    },
    {
      "pergunta": "to use",
      "respostas corretas": ['usar'],
    },
    {
      "pergunta": "to visit",
      "respostas corretas": ['visitar'],
    },
    {
      "pergunta": "to bring",
      "respostas corretas": ['trazer'],
    },
    {
      "pergunta": "to choose",
      "respostas corretas": ['escolher'],
    },
    {
      "pergunta": "to close",
      "respostas corretas": ['fechar'],
    },
    {
      "pergunta": "to come",
      "respostas corretas": ['vir'],
    },
    {
      "pergunta": "to cost",
      "respostas corretas": ['custar'],
    },
    {
      "pergunta": "to find",
      "respostas corretas": ['encontrar'],
    },
    {
      "pergunta": "to forget",
      "respostas corretas": ['esquecer'],
    },
    {
      "pergunta": "to get",
      "respostas corretas": ['conseguir'],
    },
    {
      "pergunta": "to know how",
      "respostas corretas": ['saber como'],
    },
    {
      "pergunta": "to lend",
      "respostas corretas": ['emprestar'],
    },
    {
      "pergunta": "to put",
      "respostas corretas": ['colocar'],
    },
    {
      "pergunta": "to take",
      "respostas corretas": ['levar'],
    },
    {
      "pergunta": "to do",
      "respostas corretas": ['fazer'],
    },
    {
      "pergunta": "to give",
      "respostas corretas": ['dar'],
    },
    {
      "pergunta": "to look for",
      "respostas corretas": ['procurar'],
    },
    {
      "pergunta": "to practice",
      "respostas corretas": ['praticar'],
    },
    {
      "pergunta": "to see",
      "respostas corretas": ['ver'],
    },
    {
      "pergunta": "to sleep",
      "respostas corretas": ['dormir'],
    },
    {
      "pergunta": "to spend",
      "respostas corretas": ['passar'],
    },
    {
      "pergunta": "to take off",
      "respostas corretas": ['tirar'],
    },
    {
      "pergunta": "to tell",
      "respostas corretas": ['contar'],
    },
    {
      "pergunta": "to try on",
      "respostas corretas": ['experimentar'],
    },
    {
      "pergunta": "to wear",
      "respostas corretas": ['vestir'],
    },
    {
      "pergunta": "to be",
      "respostas corretas": ['ser'],
    },
    {
      "pergunta": "to look like",
      "respostas corretas": ['parecer-se'],
    },
    {
      "pergunta": "to celebrate",
      "respostas corretas": ['celebrar'],
    },
    {
      "pergunta": "to date",
      "respostas corretas": ['namorar'],
    },
    {
      "pergunta": "to deliver",
      "respostas corretas": ['entregar'],
    },
    {
      "pergunta": "to enjoy",
      "respostas corretas": ['aproveitar'],
    },
    {
      "pergunta": "to flirt",
      "respostas corretas": ['fletar'],
    },
    {
      "pergunta": "to happen",
      "respostas corretas": ['acontecer'],
    },
    {
      "pergunta": "to have fun",
      "respostas corretas": ['divertir-se'],
    },
    {
      "pergunta": "to leave",
      "respostas corretas": ['sair'],
    },
    {
      "pergunta": "to meet",
      "respostas corretas": ['encontrar'],
    },
    {
      "pergunta": "to purchase",
      "respostas corretas": ['adquirir'],
    },
    {
      "pergunta": "to show",
      "respostas corretas": ['mostrar'],
    },
    {
      "pergunta": "to wash",
      "respostas corretas": ['lavar'],
    },
    {
      "pergunta": "to feel",
      "respostas corretas": ['sentir'],
    },
    {
      "pergunta": "to gossip",
      "respostas corretas": ['fofocar'],
    },
    {
      "pergunta": "to have breakfast",
      "respostas corretas": ['tomar cafe da manha', 'tomar café', 'tomar cafe', 'tomar café da manha'],
    },
    {
      "pergunta": "to have dinner",
      "respostas corretas": ['jantar' ],
    },
    {
      "pergunta": "to have lunch",
      "respostas corretas": ['almoçar'],
    },
    {
      "pergunta": "to plan",
      "respostas corretas": ['planejar'],
    },
    {
      "pergunta": "to recover",
      "respostas corretas": ['recuperar'],
    },
    {
      "pergunta": "to steal",
      "respostas corretas": ['roubar'],
    },
    {
      "pergunta": "to ask",
      "respostas corretas": ['perguntar'],
    },
    {
      "pergunta": "to be grounded",
      "respostas corretas": ['ficar de castigo', 'ficar castigado'],
    },
    {
      "pergunta": "to borrow",
      "respostas corretas": ['pedir emprestado'],
    },
    {
      "pergunta": "to build",
      "respostas corretas": ['construir'],
    },
    {
      "pergunta": "to cut",
      "respostas corretas": ['cortar'],
    },
    {
      "pergunta": "to draw",
      "respostas corretas": ['desenhar'],
    },
    {
      "pergunta": "to drive",
      "respostas corretas": ['dirigir'],
    },
    {
      "pergunta": "to flunk",
      "respostas corretas": ['reprovar', 'reprovar-se', 'ser reprovado'],
    },
    {
      "pergunta": "to get away with",
      "respostas corretas": ['se safar', 'se safar-se', 'safar'],
    },
    {
      "pergunta": "to hold",
      "respostas corretas": ['segurar'],
    },
    {
      "pergunta": "to keep ",
      "respostas corretas": ['manter'],
    },
    {
      "pergunta": "to lick",
      "respostas corretas": ['lamber'],
    },
    {
      "pergunta": "to lift",
      "respostas corretas": ['levantar'],
    },
    {
      "pergunta": "to paint",
      "respostas corretas": ['pintar'],
    },
    {
      "pergunta": "to pretend",
      "respostas corretas": ['fingir'],
    },
    {
      "pergunta": "to rain",
      "respostas corretas": ['chover'],
    },
    {
      "pergunta": "to sing",
      "respostas corretas": ['cantar'],
    },
    {
      "pergunta": "to sit",
      "respostas corretas": ['sentar'],
    },
    {
      "pergunta": "to teach",
      "respostas corretas": ['ensinar'],
    },
    {
      "pergunta": "to touch",
      "respostas corretas": ['tocar'],
    },
    {
      "pergunta": "to accept",
      "respostas corretas": ['aceitar'],
    },
    {
      "pergunta": "to agree",
      "respostas corretas": ['concordar'],
    },
    {
      "pergunta": "to allow",
      "respostas corretas": ['permitir'],
    },
    {
      "pergunta": "to cancel",
      "respostas corretas": ['cancelar'],
    },
    {
      "pergunta": "to crash",
      "respostas corretas": ['entrar de penetra'],
    },
    {
      "pergunta": "to dress up",
      "respostas corretas": ['arrumar-se'],
    },
    {
      "pergunta": "to go sightseeing",
      "respostas corretas": ['ir ao ponto turístico', 'ir ao ponto turistico'],
    },
    {
      "pergunta": "to improve",
      "respostas corretas": ['aprimorar', 'melhorar'],
    },
    {
      "pergunta": "to invest",
      "respostas corretas": ['investir'],
    },
    {
      "pergunta": "to own",
      "respostas corretas": ['possuir'],
    },
    {
      "pergunta": "to recommend",
      "respostas corretas": ['recomendar'],
    },
    {
      "pergunta": "to throw a party",
      "respostas corretas": ['fazer uma festa'],
    },
    {
      "pergunta": "to trust",
      "respostas corretas": ['confiar'],
    },
    {
      "pergunta": "to win",
      "respostas corretas": ['ganhar'],
    },
    {
      "pergunta": "to advise",
      "respostas corretas": ['aconselhar'],
    },
    {
      "pergunta": "to argue",
      "respostas corretas": ['discutir'],
    },
    {
      "pergunta": "to ask for",
      "respostas corretas": ['pedir por'],
    },
    {
      "pergunta": "to bake",
      "respostas corretas": ['assar'],
    },
    {
      "pergunta": "to freak out",
      "respostas corretas": ['surtar'],
    },
    {
      "pergunta": "to grrind",
      "respostas corretas": ['moer'],
    },
    {
      "pergunta": "to ignore",
      "respostas corretas": ['ignorar'],
    },
    {
      "pergunta": "to learn",
      "respostas corretas": ['aprender'],
    },
    {
      "pergunta": "to season",
      "respostas corretas": ['temperar'],
    },
    {
      "pergunta": "to stall",
      "respostas corretas": ['enrolar'],
    },
    {
      "pergunta": "to take out",
      "respostas corretas": ['retirar'],
    },
    {
      "pergunta": "to wait",
      "respostas corretas": ['esperar'],
    },
    {
      "pergunta": "to abandon",
      "respostas corretas": ['abandonar'],
    },
    {
      "pergunta": "to adopt",
      "respostas corretas": ['adotar'],
    },
    {
      "pergunta": "to apologize",
      "respostas corretas": ['desculpar'],
    },
    {
      "pergunta": "to consider",
      "respostas corretas": ['considerar'],
    },
    {
      "pergunta": "to feed",
      "respostas corretas": ['alimentar'],
    },
    {
      "pergunta": "to get along",
      "respostas corretas": ['se dar bem'],
    },
    {
      "pergunta": "to protect",
      "respostas corretas": ['proteger'],
    },
    {
      "pergunta": "to rescue",
      "respostas corretas": ['resgatar'],
    },
    {
      "pergunta": "to respect",
      "respostas corretas": ['respeirar'],
    },
    {
      "pergunta": "to treat",
      "respostas corretas": ['tratar'],
    },
    {
      "pergunta": "to win",
      "respostas corretas": ['vencer', 'ganhar'],
    },
    {
      "pergunta": "to charge",
      "respostas corretas": ['carregar'],
    },
    {
      "pergunta": "to control",
      "respostas corretas": ['controlar'],
    },
    {
      "pergunta": "to decorate",
      "respostas corretas": ['decorar'],
    },
    {
      "pergunta": "to decrease",
      "respostas corretas": ['diminuir'],
    },
    {
      "pergunta": "to expect",
      "respostas corretas": ['esperar'],
    },
    {
      "pergunta": "to get a haircut",
      "respostas corretas": ['cortar o cabelo', 'cortar cabelo'],
    },
    {
      "pergunta": "to increase",
      "respostas corretas": ['aumentar'],
    },
    {
      "pergunta": "to interrupt",
      "respostas corretas": ['interromper'],
    },
    {
      "pergunta": "to invest",
      "respostas corretas": ['investir'],
    },
    {
      "pergunta": "to notice",
      "respostas corretas": ['perceber'],
    },
    {
      "pergunta": "to postpone",
      "respostas corretas": ['adiar'],
    },
    {
      "pergunta": "to present",
      "respostas corretas": ['apresentar'],
    },
    {
      "pergunta": "to quit",
      "respostas corretas": ['sair'],
    },
    {
      "pergunta": "to reduce",
      "respostas corretas": ['reduzir'],
    },
    {
      "pergunta": "to request",
      "respostas corretas": ['solicitar'],
    },
    {
      "pergunta": "to schedule",
      "respostas corretas": ['agendar'],
    },
    {
      "pergunta": "to snow",
      "respostas corretas": ['nevar'],
    },
    {
      "pergunta": "to suggest",
      "respostas corretas": ['sugerir'],
    },
    {
      "pergunta": "to chop",
      "respostas corretas": ['picar'],
    },
    {
      "pergunta": "to explore",
      "respostas corretas": ['explorar'],
    },
    {
      "pergunta": "to join",
      "respostas corretas": ['juntar-se', 'fazer parte'],
    },
    {
      "pergunta": "to pick",
      "respostas corretas": ['escolher'],
    },
    {
      "pergunta": "to run",
      "respostas corretas": ['correr'],
    },
    {
      "pergunta": "to wait",
      "respostas corretas": ['esperar', 'aguardar'],
    },
    {
      "pergunta": "to complain",
      "respostas corretas": ['reclamar'],
    },
    {
      "pergunta": "to decide",
      "respostas corretas": ['decidir'],
    },
    {
      "pergunta": "to delete",
      "respostas corretas": ['apagar'],
    },
    {
      "pergunta": "to keep",
      "respostas corretas": ['aguardar'],
    },
    {
      "pergunta": "to mix",
      "respostas corretas": ['misturar'],
    },
    {
      "pergunta": "to post",
      "respostas corretas": ['postar'],
    },
    {
      "pergunta": "to save",
      "respostas corretas": ['savar'],
    },
    {
      "pergunta": "to serve",
      "respostas corretas": ['servir'],
    },
    {
      "pergunta": "to share",
      "respostas corretas": ['compartilhar'],
    },
    {
      "pergunta": "to spend",
      "respostas corretas": ['gastar'],
    },
    {
      "pergunta": "to text",
      "respostas corretas": ['mandar mensagem'],
    },
    {
      "pergunta": "to throw away",
      "respostas corretas": ['jogar para fora', 'jogar fora'],
    },
    {
      "pergunta": "to withdraw",
      "respostas corretas": ['sacar'],
    },
    {
      "pergunta": "to describe",
      "respostas corretas": ['descrever'],
    },
    {
      "pergunta": "to perform",
      "respostas corretas": ['performar'],
    },
    {
      "pergunta": "to be afraid of",
      "respostas corretas": ['medo de', 'medo'],
    },
    {
      "pergunta": "to become",
      "respostas corretas": ['tornar-se', 'se tornar'],
    },
    {
      "pergunta": "to belong",
      "respostas corretas": ['pertecer'],
    },
    {
      "pergunta": "to fit",
      "respostas corretas": ['servir'],
    },
    {
      "pergunta": "to go with",
      "respostas corretas": ['combinar com'],
    },
    {
      "pergunta": "to start",
      "respostas corretas": ['começar', 'iniciar'],
    },
    {
      "pergunta": "to take",
      "respostas corretas": ['tomar', 'pegar'],
    },
    {
      "pergunta": "to take care",
      "respostas corretas": ['cuidar'],
    },
    {
      "pergunta": "to treat",
      "respostas corretas": ['tratar'],
    },
   
  ];
  
}
