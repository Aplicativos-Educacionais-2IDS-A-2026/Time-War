
// pagina_resultado.dart


// IMPORTAÇÃO DA BIBLIOTECA PRINCIPAL DO FLUTTER
import 'package:flutter/material.dart';

// CRIAÇÃO DA TELA DE RESULTADO
class PaginaResultado extends StatelessWidget {

  // CONSTRUTOR DA CLASSE
  const PaginaResultado({super.key});

  
  // PALETA DE CORES
  

  // COR DE FUNDO DA PÁGINA
  static const Color fundoDocumento = Color(0xFFDED4BC);

  // COR PRINCIPAL AZUL
  static const Color azulMarinha = Color(0xFF384552);

  // COR ESCURA DOS TEXTOS
  static const Color carbono = Color(0xFF1A1A1A);

  
  // MÉTODO PRINCIPAL DA TELA
  

  @override
  Widget build(BuildContext context) {

    
    // RECEBE OS DADOS VINDOS DO QUIZ
    

    // PEGA OS ARGUMENTOS ENVIADOS PELA TELA ANTERIOR
    final Map<String, dynamic> resultado =
        ModalRoute.of(context)!.settings.arguments
            as Map<String, dynamic>;

    // QUANTIDADE DE ACERTOS
    final int acertos = resultado["acertos"];

    // QUANTIDADE DE ERROS
    final int erros = resultado["erros"];

    // TOTAL DE QUESTÕES
    final int total = resultado["total"];

    // CALCULA A PORCENTAGEM DE ACERTOS
    final double porcentagem = (acertos / total) * 100;

    
    // MENSAGEM FINAL
    

    // VARIÁVEL QUE GUARDARÁ A MENSAGEM
    String mensagem = "";

    // VERIFICA O DESEMPENHO DO USUÁRIO

    // SE ACERTOU 100%
    if (porcentagem == 100) {

      mensagem =
          "Desempenho excelente! Você domina o tema!";

    // SE ACERTOU 70% OU MAIS
    } else if (porcentagem >= 70) {

      mensagem =
          "Muito bom! Você conhece bem a Segunda Guerra.";

    // SE ACERTOU 50% OU MAIS
    } else if (porcentagem >= 50) {

      mensagem =
          "Bom trabalho! Continue revisando para melhorar.";

    // SE ACERTOU MENOS DE 50%
    } else {

      mensagem =
          "Continue estudando! Revise os conteúdos e tente novamente.";
    }

    
    // ESTRUTURA PRINCIPAL DA TELA
    

    return Scaffold(

      // COR DE FUNDO DA PÁGINA
      backgroundColor: fundoDocumento,

      
      // APPBAR
      

      appBar: AppBar(

        // COR DA BARRA SUPERIOR
        backgroundColor: azulMarinha,

        // CENTRALIZA O TÍTULO
        centerTitle: true,

        // REMOVE A SETA DE VOLTAR
        automaticallyImplyLeading: false,

        // TÍTULO DA APPBAR
        title: const Text(
          "Resultado Final",

          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      
      // CORPO DA PÁGINA
      

      body: Center(

        child: Padding(

          // ESPAÇAMENTO INTERNO
          padding: const EdgeInsets.all(24),

          child: Column(

            // CENTRALIZA OS ITENS NA TELA
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              
              // TÍTULO PRINCIPAL
              

              const Text(
                "Seu Desempenho",

                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: azulMarinha,
                ),
              ),

              const SizedBox(height: 30),

              
              // CARD DE RESULTADO
              

              Card(

                // COR DO CARD
                color: Colors.white,

                // SOMBRA DO CARD
                elevation: 6,

                // FORMATO DAS BORDAS
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Padding(

                  // ESPAÇAMENTO INTERNO DO CARD
                  padding: const EdgeInsets.all(25),

                  child: Column(

                    children: [

                      
                      // TEXTO DE ACERTOS
                      

                      Text(
                        "Acertos: $acertos",

                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: carbono,
                        ),
                      ),

                      const SizedBox(height: 10),

                      
                      // TEXTO DE ERROS
                      

                      Text(
                        "Erros: $erros",

                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: carbono,
                        ),
                      ),

                      const SizedBox(height: 10),

                      
                      // TEXTO DA PORCENTAGEM FINAL
                      

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

              
              // MENSAGEM FINAL AO USUÁRIO
              

              Text(
                mensagem,

                // CENTRALIZA O TEXTO
                textAlign: TextAlign.center,

                style: const TextStyle(
                  fontSize: 20,
                  color: carbono,
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 40),

              
              // BOTÃO REFAZER QUIZ
              

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

                    // FORMATO DAS BORDAS
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  // AÇÃO DO BOTÃO
                  onPressed: () {

                    // VOLTA PARA A PÁGINA DO QUIZ
                    Navigator.pushReplacementNamed(
                      context,
                      '/quiz',
                    );
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

                // LARGURA TOTAL
                width: double.infinity,

                child: OutlinedButton(

                  style: OutlinedButton.styleFrom(

                    // BORDA DO BOTÃO
                    side: const BorderSide(
                      color: azulMarinha,
                      width: 2,
                    ),

                    // ESPAÇAMENTO INTERNO
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),

                    // FORMATO DAS BORDAS
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  // AÇÃO DO BOTÃO
                  onPressed: () {

                    // REMOVE TODAS AS TELAS E VOLTA AO INÍCIO
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/inicio',

                      // REMOVE TODAS AS ROTAS ANTERIORES
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