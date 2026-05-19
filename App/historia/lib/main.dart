// =============================
// MAIN.DART
// =============================
import 'package:flutter/material.dart';
import 'package:industria_quimica/pagina_quiz.dart';

// IMPORTAÇÃO DAS PÁGINAS
import 'pagina_inicial.dart';
import 'pagina_conteudos.dart';
import 'pagina_detalhes.dart';
//import 'pagina_quiz.dart';
import 'pagina_resultado.dart';
import 'pagina_sobre.dart';

void main() {
  runApp(const SegundaGuerraApp());
}

class SegundaGuerraApp extends StatelessWidget {
  const SegundaGuerraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Memórias da Segunda Guerra',

      // Página inicial do app
      home: const PaginaInicial(),

      // ROTAS DE NAVEGAÇÃO ENTRE ARQUIVOS
      routes: {
        '/inicio': (context) => const PaginaInicial(),
        '/conteudos': (context) => const PaginaConteudos(),
        '/detalhes': (context) => const PaginaDetalhes(),
        '/quiz': (context) => const PaginaQuiz(),
        '/resultado': (context) => const PaginaResultado(),
        '/sobre': (context) => const PaginaSobre(),
      },
    );
  }
}