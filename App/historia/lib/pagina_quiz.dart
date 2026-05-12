// =============================
// pagina_quiz.dart
// QUESTÕES COM NÍVEIS + FONTES
// =============================
import 'package:flutter/material.dart';

class PaginaQuiz extends StatefulWidget {
  const PaginaQuiz({super.key});

  @override
  State<PaginaQuiz> createState() => _PaginaQuizState();
}

class _PaginaQuizState extends State<PaginaQuiz> {
  // PALETA
  static const Color fundoDocumento = Color(0xFFDED4BC);
  static const Color azulMarinha = Color(0xFF384552);
  static const Color carbono = Color(0xFF1A1A1A);

  // QUESTÕES
  final List<Map<String, dynamic>> perguntas = [
  {
  "nivel": "Fácil",
  "fonte": "ENEM",
  "pergunta": "Qual cidade alemã foi dividida após a Segunda Guerra Mundial?",
  "alternativas": [
    "Munique",
    "Berlim",
    "Hamburgo",
    "Frankfurt"
  ],
  "resposta": "Berlim",
},

{
  "nivel": "Fácil",
  "fonte": "ENEM",
  "pergunta": "Quem era o primeiro-ministro britânico durante grande parte da guerra?",
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
  "pergunta": "Em qual continente ocorreu a maior parte das batalhas europeias?",
  "alternativas": [
    "África",
    "Ásia",
    "Europa",
    "América"
  ],
  "resposta": "Europa",
},

// MÉDIAS
{
  "nivel": "Médio",
  "fonte": "FUVEST",
  "pergunta": "O Pacto Germano-Soviético de 1939 consistia em:",
  "alternativas": [
    "Aliança militar permanente",
    "Acordo de não agressão entre Alemanha e URSS",
    "Divisão da França",
    "Tratado de paz mundial"
  ],
  "resposta": "Acordo de não agressão entre Alemanha e URSS",
},

{
  "nivel": "Médio",
  "fonte": "ENEM",
  "pergunta": "A resistência francesa durante a ocupação nazista foi marcada por:",
  "alternativas": [
    "Apoio total ao Eixo",
    "Movimentos clandestinos contra os nazistas",
    "Neutralidade completa",
    "Domínio soviético"
  ],
  "resposta": "Movimentos clandestinos contra os nazistas",
},

{
  "nivel": "Médio",
  "fonte": "UNICAMP",
  "pergunta": "A Conferência de Yalta discutiu principalmente:",
  "alternativas": [
    "Início da Primeira Guerra",
    "Reorganização do mundo pós-guerra",
    "Expansão japonesa",
    "Criação do nazismo"
  ],
  "resposta": "Reorganização do mundo pós-guerra",
},

// DIFÍCEIS
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
  "resposta": "Ataques rápidos e coordenados",
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
  "resposta": "Rendição japonesa",
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
  "resposta": "Espaço vital (Lebensraum)",
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
  "resposta": "Força Expedicionária Brasileira na Itália",
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
  "resposta": "Julgar crimes de guerra nazistas",
},
  ];

  int perguntaAtual = 0;
  int pontuacao = 0;
  String? respostaSelecionada;

  void confirmarResposta() {
    if (respostaSelecionada == null) return;

    if (respostaSelecionada == perguntas[perguntaAtual]["resposta"]) {
      pontuacao++;
    }

    if (perguntaAtual < perguntas.length - 1) {
      setState(() {
        perguntaAtual++;
        respostaSelecionada = null;
      });
    } else {
      Navigator.pushNamed(
        context,
        '/resultado',
        arguments: {
          "acertos": pontuacao,
          "erros": perguntas.length - pontuacao,
          "total": perguntas.length,
        },
      );
    }
  }

  Color corNivel(String nivel) {
    switch (nivel) {
      case "Fácil":
        return Colors.green;
      case "Médio":
        return Colors.orange;
      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    final pergunta = perguntas[perguntaAtual];

    return Scaffold(
      backgroundColor: fundoDocumento,

      appBar: AppBar(
        backgroundColor: azulMarinha,
        centerTitle: true,
        title: const Text(
          "Quiz - Segunda Guerra",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
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

            // NÚMERO DA QUESTÃO
            Text(
              "Pergunta ${perguntaAtual + 1} de ${perguntas.length}",
              style: const TextStyle(
                fontSize: 18,
                color: carbono,
              ),
            ),

            const SizedBox(height: 15),

            // NÍVEL
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: corNivel(pergunta["nivel"]),
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

            // FONTE
            Text(
              "Fonte: ${pergunta["fonte"]}",
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: carbono,
              ),
            ),

            const SizedBox(height: 20),

            // PERGUNTA
            Text(
              pergunta["pergunta"],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: carbono,
              ),
            ),

            const SizedBox(height: 25),

            // ALTERNATIVAS
            ...List.generate(
              pergunta["alternativas"].length,
              (index) {
                String alternativa = pergunta["alternativas"][index];

                return Card(
                  color: Colors.white,
                  child: RadioListTile<String>(
                    title: Text(
                      alternativa,
                      style: const TextStyle(color: carbono),
                    ),
                    value: alternativa,
                    groupValue: respostaSelecionada,
                    activeColor: azulMarinha,
                    onChanged: (value) {
                      setState(() {
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
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: azulMarinha,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed:
                    respostaSelecionada == null ? null : confirmarResposta,
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

            // REFERÊNCIAS GERAIS
            const Divider(
              color: carbono,
              thickness: 1,
            ),

            const SizedBox(height: 15),

            const Text(
              "Fontes e Referências das Questões",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: azulMarinha,
              ),
            ),

            const SizedBox(height: 10),

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