// =============================
// pagina_resultado.dart
// =============================
import 'package:flutter/material.dart';

class PaginaResultado extends StatelessWidget {
  const PaginaResultado({super.key});

  // PALETA
  static const Color fundoDocumento = Color(0xFFDED4BC);
  static const Color azulMarinha = Color(0xFF384552);
  static const Color carbono = Color(0xFF1A1A1A);

  @override
  Widget build(BuildContext context) {
    // RECEBE DADOS DO QUIZ
    final Map<String, dynamic> resultado =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final int acertos = resultado["acertos"];
    final int erros = resultado["erros"];
    final int total = resultado["total"];

    final double porcentagem = (acertos / total) * 100;

    String mensagem = "";

    if (porcentagem == 100) {
      mensagem = "Desempenho excelente! Você domina o tema!";
    } else if (porcentagem >= 70) {
      mensagem = "Muito bom! Você conhece bem a Segunda Guerra.";
    } else if (porcentagem >= 50) {
      mensagem = "Bom trabalho! Continue revisando para melhorar.";
    } else {
      mensagem = "Continue estudando! Revise os conteúdos e tente novamente.";
    }

    return Scaffold(
      backgroundColor: fundoDocumento,

      appBar: AppBar(
        backgroundColor: azulMarinha,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "Resultado Final",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // TÍTULO
              const Text(
                "Seu Desempenho",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: azulMarinha,
                ),
              ),

              const SizedBox(height: 30),

              // CARD RESULTADO
              Card(
                color: Colors.white,
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(25),

                  child: Column(
                    children: [

                      Text(
                        "Acertos: $acertos",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: carbono,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "Erros: $erros",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: carbono,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "Pontuação Final: ${porcentagem.toStringAsFixed(0)}%",
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: azulMarinha,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // MENSAGEM
              Text(
                mensagem,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: carbono,
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 40),

              // BOTÃO REFAZER
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: azulMarinha,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/quiz');
                  },

                  child: const Text(
                    "Refazer Atividade",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // BOTÃO VOLTAR AO INÍCIO
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: azulMarinha,
                      width: 2,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/inicio',
                      (route) => false,
                    );
                  },

                  child: const Text(
                    "Voltar à Página Inicial",
                    style: TextStyle(
                      fontSize: 18,
                      color: carbono,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}