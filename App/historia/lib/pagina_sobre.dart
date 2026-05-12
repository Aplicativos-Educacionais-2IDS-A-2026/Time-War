// =============================
// pagina_sobre.dart (VERSÃO MELHORADA)
// =============================
import 'package:flutter/material.dart';

class PaginaSobre extends StatelessWidget {
  const PaginaSobre({super.key});

  // PALETA
  static const Color fundoDocumento = Color(0xFFDED4BC);
  static const Color azulMarinha = Color(0xFF384552);
  static const Color carbono = Color(0xFF1A1A1A);
  static const Color branco = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundoDocumento,

      appBar: AppBar(
        backgroundColor: azulMarinha,
        centerTitle: true,
        elevation: 4,
        title: const Text(
          "Sobre o Aplicativo",
          style: TextStyle(
            color: branco,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // CABEÇALHO
            const Icon(
              Icons.menu_book_rounded,
              size: 70,
              color: azulMarinha,
            ),

            const SizedBox(height: 15),

            const Text(
              "Memórias da Segunda Guerra",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: azulMarinha,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Disciplina: História",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                fontStyle: FontStyle.italic,
                color: carbono,
              ),
            ),

            const SizedBox(height: 30),

            // CARDS
            _buildCard(
              titulo: "Objetivo do App",
              icone: Icons.flag_rounded,
              conteudo:
                  "Este aplicativo foi desenvolvido para ensinar sobre a Segunda Guerra Mundial de forma educativa, interativa e acessível, oferecendo conteúdos, exemplos e atividades para reforçar o aprendizado.",
            ),

            _buildCard(
              titulo: "Integrantes do Grupo",
              icone: Icons.group,
              conteudo:
                  "• Erick\n• Thaiene\n• Ana Lara\n• Maria Clara",
            ),

            _buildCard(
              titulo: "Turma e Professor",
              icone: Icons.school,
              conteudo:
                  "Turma: 3ºA Desenvolvimento de Sistemas\nProfessor: Gabriel E. e Luíz O.",
            ),

            _buildCard(
              titulo: "Tecnologias Utilizadas",
              icone: Icons.code,
              conteudo:
                  "• Flutter\n• Canva ",
            ),

            const SizedBox(height: 35),

            // BOTÃO VOLTAR
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: azulMarinha,
                padding: const EdgeInsets.symmetric(vertical: 16),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),

              onPressed: () {
                Navigator.pop(context);
              },

              icon: const Icon(
                Icons.arrow_back,
                color: branco,
              ),

              label: const Text(
                "Voltar",
                style: TextStyle(
                  fontSize: 18,
                  color: branco,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  // WIDGET PADRÃO PARA CARDS
  static Widget _buildCard({
    required String titulo,
    required IconData icone,
    required String conteudo,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),

      child: Card(
        color: branco,
        elevation: 5,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),

        child: Padding(
          padding: const EdgeInsets.all(18),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  Icon(
                    icone,
                    color: azulMarinha,
                    size: 28,
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Text(
                      titulo,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: azulMarinha,
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(
                height: 25,
                thickness: 1,
              ),

              Text(
                conteudo,
                style: const TextStyle(
                  fontSize: 17,
                  color: carbono,
                  height: 1.7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}