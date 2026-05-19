
// pagina_quiz.dart
// QUESTÕES COM NÍVEIS + FONTES

// IMPORTAÇÃO DA BIBLIOTECA PRINCIPAL DO FLUTTER
import 'package:flutter/material.dart';

// CRIAÇÃO DA TELA DO QUIZ
class PaginaQuiz extends StatefulWidget {

  // CONSTRUTOR DA CLASSE
  const PaginaQuiz({super.key});

  // CRIA O ESTADO DA TELA
  @override
  State<PaginaQuiz> createState() => _PaginaQuizState();
}

// CLASSE RESPONSÁVEL PELO ESTADO DA TELA
class _PaginaQuizState extends State<PaginaQuiz> {


  // PALETA DE CORES


  // COR DE FUNDO DA PÁGINA
  static const Color fundoDocumento = Color(0xFFDED4BC);

  // COR AZUL PRINCIPAL
  static const Color azulMarinha = Color(0xFF384552);

  // COR ESCURA PARA TEXTOS
  static const Color carbono = Color(0xFF1A1A1A);


  // LISTA DE PERGUNTAS


  // LISTA CONTENDO TODAS AS QUESTÕES DO QUIZ
  final List<Map<String, dynamic>> perguntas = [


    // QUESTÕES FÁCEIS


    {
      // NÍVEL DA QUESTÃO
      "nivel": "Fácil",

      // FONTE DA QUESTÃO
      "fonte": "ENEM",

      // TEXTO DA PERGUNTA
      "pergunta":
          "Qual cidade alemã foi dividida após a Segunda Guerra Mundial?",

      // ALTERNATIVAS
      "alternativas": [
        "Munique",
        "Berlim",
        "Hamburgo",
        "Frankfurt"
      ],

      // RESPOSTA CORRETA
      "resposta": "Berlim",
    },

    {
      "nivel": "Fácil",

      "fonte": "ENEM",

      "pergunta":
          "Quem era o primeiro-ministro britânico durante grande parte da guerra?",

      "alternativas": [
        "Neville Chamberlain",
        "Winston Churchill",
        "Charles de Gaulle",
        "Harry Truman"
      ],

      "resposta": "Winston Churchill",
    },

    {
      "nivel": "Fácil",

      "fonte": "UNESP",

      "pergunta":
          "Em qual continente ocorreu a maior parte das batalhas europeias?",

      "alternativas": [
        "África",
        "Ásia",
        "Europa",
        "América"
      ],

      "resposta": "Europa",
    },

  
    // QUESTÕES MÉDIAS


    {
      "nivel": "Médio",

      "fonte": "FUVEST",

      "pergunta":
          "O Pacto Germano-Soviético de 1939 consistia em:",

      "alternativas": [
        "Aliança militar permanente",
        "Acordo de não agressão entre Alemanha e URSS",
        "Divisão da França",
        "Tratado de paz mundial"
      ],

      "resposta":
          "Acordo de não agressão entre Alemanha e URSS",
    },

    {
      "nivel": "Médio",

      "fonte": "ENEM",

      "pergunta":
          "A resistência francesa durante a ocupação nazista foi marcada por:",

      "alternativas": [
        "Apoio total ao Eixo",
        "Movimentos clandestinos contra os nazistas",
        "Neutralidade completa",
        "Domínio soviético"
      ],

      "resposta":
          "Movimentos clandestinos contra os nazistas",
    },

    {
      "nivel": "Médio",

      "fonte": "UNICAMP",

      "pergunta":
          "A Conferência de Yalta discutiu principalmente:",

      "alternativas": [
        "Início da Primeira Guerra",
        "Reorganização do mundo pós-guerra",
        "Expansão japonesa",
        "Criação do nazismo"
      ],

      "resposta":
          "Reorganização do mundo pós-guerra",
    },

    
    // QUESTÕES DIFÍCEIS
  

    {
      "nivel": "Difícil",

      "fonte": "FUVEST",

      "pergunta":
          "A Blitzkrieg, estratégia militar alemã, caracterizava-se por:",

      "alternativas": [
        "Guerra de trincheiras",
        "Ataques rápidos e coordenados",
        "Bloqueio marítimo passivo",
        "Defesa aérea exclusiva"
      ],

      "resposta":
          "Ataques rápidos e coordenados",
    },

    {
      "nivel": "Difícil",

      "fonte": "ENEM",

      "pergunta":
          "O uso das bombas atômicas pelos EUA sobre Hiroshima e Nagasaki teve como consequência imediata:",

      "alternativas": [
        "Rendição japonesa",
        "Vitória alemã",
        "Início da ONU",
        "Fim da Guerra Fria"
      ],

      "resposta":
          "Rendição japonesa",
    },

    {
      "nivel": "Difícil",

      "fonte": "UNESP",

      "pergunta":
          "A expansão nazista estava ligada à ideia de:",

      "alternativas": [
        "Isolacionismo",
        "Espaço vital (Lebensraum)",
        "Pacifismo econômico",
        "Neutralidade continental"
      ],

      "resposta":
          "Espaço vital (Lebensraum)",
    },

    {
      "nivel": "Difícil",

      "fonte": "UNICAMP",

      "pergunta":
          "A participação do Brasil na Segunda Guerra ocorreu principalmente por meio:",

      "alternativas": [
        "Neutralidade diplomática",
        "Força Expedicionária Brasileira na Itália",
        "Apoio ao Eixo",
        "Domínio naval no Pacífico"
      ],

      "resposta":
          "Força Expedicionária Brasileira na Itália",
    },

    {
      "nivel": "Difícil",

      "fonte": "ENEM",

      "pergunta":
          "Os Julgamentos de Nuremberg tiveram como principal função:",

      "alternativas": [
        "Expandir fronteiras alemãs",
        "Julgar crimes de guerra nazistas",
        "Criar a OTAN",
        "Promover a Guerra Fria"
      ],

      "resposta":
          "Julgar crimes de guerra nazistas",
    },
  ];


  // VARIÁVEIS DO QUIZ


  // GUARDA O ÍNDICE DA PERGUNTA ATUAL
  int perguntaAtual = 0;

  // GUARDA A PONTUAÇÃO DO JOGADOR
  int pontuacao = 0;

  // GUARDA A RESPOSTA SELECIONADA
  String? respostaSelecionada;


  // FUNÇÃO PARA CONFIRMAR RESPOSTA

  void confirmarResposta() {

    // SE NENHUMA RESPOSTA FOR ESCOLHIDA, NÃO FAZ NADA
    if (respostaSelecionada == null) return;

    // VERIFICA SE A RESPOSTA ESTÁ CORRETA
    if (respostaSelecionada ==
        perguntas[perguntaAtual]["resposta"]) {

      // ADICIONA 1 PONTO
      pontuacao++;
    }

    // VERIFICA SE AINDA EXISTEM PERGUNTAS
    if (perguntaAtual < perguntas.length - 1) {

      // ATUALIZA O ESTADO DA TELA
      setState(() {

        // VAI PARA A PRÓXIMA PERGUNTA
        perguntaAtual++;

        // LIMPA A RESPOSTA SELECIONADA
        respostaSelecionada = null;
      });

    } else {

      // ENVIA O USUÁRIO PARA A TELA DE RESULTADO
      Navigator.pushNamed(
        context,
        '/resultado',

        // DADOS ENVIADOS PARA A TELA DE RESULTADO
        arguments: {
          "acertos": pontuacao,
          "erros": perguntas.length - pontuacao,
          "total": perguntas.length,
        },
      );
    }
  }


  // DEFINE A COR DO NÍVEL


  Color corNivel(String nivel) {

    // ESCOLHE A COR BASEADA NO NÍVEL
    switch (nivel) {

      // QUESTÕES FÁCEIS = VERDE
      case "Fácil":
        return Colors.green;

      // QUESTÕES MÉDIAS = LARANJA
      case "Médio":
        return Colors.orange;

      // QUESTÕES DIFÍCEIS = VERMELHO
      default:
        return Colors.red;
    }
  }

 
  // MÉTODO PRINCIPAL DA TELA
  

  @override
  Widget build(BuildContext context) {

    // PEGA A PERGUNTA ATUAL
    final pergunta = perguntas[perguntaAtual];

    // ESTRUTURA PRINCIPAL DA PÁGINA
    return Scaffold(

      // COR DE FUNDO
      backgroundColor: fundoDocumento,

      
      // APPBAR
      

      appBar: AppBar(

        // COR DA BARRA SUPERIOR
        backgroundColor: azulMarinha,

        // CENTRALIZA O TÍTULO
        centerTitle: true,

        // TÍTULO DA TELA
        title: const Text(
          "Quiz - Segunda Guerra",

          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      
      // CORPO DA PÁGINA
      

      body: SingleChildScrollView(

        // ESPAÇAMENTO INTERNO
        padding: const EdgeInsets.all(20),

        child: Column(

          // ALINHAMENTO À ESQUERDA
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

           
            // PONTUAÇÃO
          

            Text(
              "Pontuação: $pontuacao",

              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: carbono,
              ),
            ),

            const SizedBox(height: 15),

            
            // NÚMERO DA PERGUNTA
            

            Text(
              "Pergunta ${perguntaAtual + 1} de ${perguntas.length}",

              style: const TextStyle(
                fontSize: 18,
                color: carbono,
              ),
            ),

            const SizedBox(height: 15),

           
            // NÍVEL DA QUESTÃO
            

            Container(

              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),

              decoration: BoxDecoration(

                // COR BASEADA NO NÍVEL
                color: corNivel(pergunta["nivel"]),

                // BORDAS ARREDONDADAS
                borderRadius: BorderRadius.circular(8),
              ),

              child: Text(
                "Nível: ${pergunta["nivel"]}",

                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            
            // FONTE DA QUESTÃO
            

            Text(
              "Fonte: ${pergunta["fonte"]}",

              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: carbono,
              ),
            ),

            const SizedBox(height: 20),

            
            // TEXTO DA PERGUNTA
            

            Text(
              pergunta["pergunta"],

              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: carbono,
              ),
            ),

            const SizedBox(height: 25),

           
            // LISTA DE ALTERNATIVAS
           

            ...List.generate(

              // QUANTIDADE DE ALTERNATIVAS
              pergunta["alternativas"].length,

              (index) {

                // GUARDA A ALTERNATIVA ATUAL
                String alternativa =
                    pergunta["alternativas"][index];

                // CARD DA ALTERNATIVA
                return Card(

                  color: Colors.white,

                  child: RadioListTile<String>(

                    // TEXTO DA ALTERNATIVA
                    title: Text(
                      alternativa,

                      style: const TextStyle(
                        color: carbono,
                      ),
                    ),

                    // VALOR DA ALTERNATIVA
                    value: alternativa,

                    // VALOR ATUAL SELECIONADO
                    groupValue: respostaSelecionada,

                    // COR DO RADIO BUTTON
                    activeColor: azulMarinha,

                    // QUANDO O USUÁRIO SELECIONA
                    onChanged: (value) {

                      // ATUALIZA A TELA
                      setState(() {

                        // SALVA A RESPOSTA ESCOLHIDA
                        respostaSelecionada = value;
                      });
                    },
                  ),
                );
              },
            ),

            const SizedBox(height: 25),

            
            // BOTÃO CONFIRMAR
            

            SizedBox(

              // LARGURA TOTAL
              width: double.infinity,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(

                  // COR DO BOTÃO
                  backgroundColor: azulMarinha,

                  // ESPAÇAMENTO INTERNO
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),

                // DESABILITA O BOTÃO SE NÃO HOUVER RESPOSTA
                onPressed:
                    respostaSelecionada == null
                        ? null
                        : confirmarResposta,

                child: const Text(
                  "Confirmar Resposta",

                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            
            // LINHA DIVISÓRIA
            

            const Divider(
              color: carbono,
              thickness: 1,
            ),

            const SizedBox(height: 15),

            
            // TÍTULO DAS REFERÊNCIAS
         

            const Text(
              "Fontes e Referências das Questões",

              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: azulMarinha,
              ),
            ),

            const SizedBox(height: 10),

            
            // TEXTO DAS REFERÊNCIAS
           

            const Text(
              "• ENEM (nazifascismo, Guerra Fria e conflitos mundiais)\n"
              "• FUVEST (Tratado de Versalhes e relações internacionais)\n"
              "• UNESP / UNICAMP (contexto histórico e consequências globais)\n"
              "• Questões adaptadas para fins educacionais",

              style: TextStyle(
                fontSize: 15,
                color: carbono,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}