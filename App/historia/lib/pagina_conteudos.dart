import 'package:flutter/material.dart';

class PaginaConteudos extends StatelessWidget {
  const PaginaConteudos({super.key});

  // PALETA
  static const Color fundoDocumento = Color(0xFFDED4BC);
  static const Color azulMarinha = Color(0xFF384552);
  static const Color carbono = Color(0xFF1A1A1A);

  // LISTA DE CONTEÚDOS
  final List<Map<String, String>> conteudos = const [
    {
      "titulo": "Causas da Segunda Guerra",
      "descricao":
          "Entenda os fatores políticos, econômicos e territoriais que levaram ao conflito em 1939.",
      "rota": "/detalhes",
    },
    {
      "titulo": "Principais Batalhas",
      "descricao":
          "Conheça confrontos marcantes como Stalingrado, Pearl Harbor e o Dia D.",
      "rota": "/detalhes",
    },
    {
      "titulo": "Holocausto",
      "descricao":
          "Saiba sobre a perseguição nazista e o genocídio de milhões de pessoas.",
      "rota": "/detalhes",
    },
    {
      "titulo": "Consequências da Guerra",
      "descricao":
          "Veja como o conflito transformou o mundo política, social e economicamente.",
      "rota": "/detalhes",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundoDocumento,

      appBar: AppBar(
        backgroundColor: azulMarinha,
        centerTitle: true,
        title: const Text(
          "Conteúdos - Segunda Guerra",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // TÍTULO
            const Text(
              "Tópicos de Estudo",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: carbono,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Explore os principais acontecimentos da Segunda Guerra Mundial:",
              style: TextStyle(
                fontSize: 16,
                color: carbono,
              ),
            ),

            const SizedBox(height: 20),

            // LISTA DE CARDS
            Expanded(
              child: ListView.builder(
                itemCount: conteudos.length,
                itemBuilder: (context, index) {
                  final conteudo = conteudos[index];

                  return Card(
                    color: Colors.white,
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(15),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          // TÍTULO DO CARD
                          Text(
                            conteudo["titulo"]!,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: azulMarinha,
                            ),
                          ),

                          const SizedBox(height: 8),

                          // DESCRIÇÃO
                          Text(
                            conteudo["descricao"]!,
                            style: const TextStyle(
                              fontSize: 16,
                              color: carbono,
                            ),
                          ),

                          const SizedBox(height: 15),

                          // BOTÃO DETALHES
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: azulMarinha,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),

                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/detalhes',
                                  arguments: conteudo["titulo"],
                                );
                              },

                              child: const Text(
                                "Ver Detalhes",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // BOTÃO VOLTAR
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: azulMarinha,
                    width: 2,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),

                onPressed: () {
                  Navigator.pop(context);
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
    );
  }
}