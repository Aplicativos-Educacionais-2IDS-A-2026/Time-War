// =============================
// pagina_inicial.dart (CORRIGIDO SEM OVERFLOW)
// =============================
import 'dart:async';
import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  // PALETA
  static const Color fundoDocumento = Color(0xFFDED4BC);
  static const Color azulMarinha = Color(0xFF384552);
  static const Color carbono = Color(0xFF1A1A1A);
  static const Color branco = Colors.white;

  final PageController _pageController = PageController();
  int _paginaAtual = 0;

  // IMAGENS DO CARROSSEL
  final List<String> imagensHistoricas = [
    'assets/images/guerra1.jpg',
    'assets/images/guerra2.jpg',
    'assets/images/guerra3.jpg',
    'assets/images/guerra4.jpg',
  ];

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_pageController.hasClients) {
        _paginaAtual++;

        if (_paginaAtual >= imagensHistoricas.length) {
          _paginaAtual = 0;
        }

        _pageController.animateToPage(
          _paginaAtual,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundoDocumento,

      // =============================
      // MENU LATERAL
      // =============================
      drawer: Drawer(
        backgroundColor: fundoDocumento,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            // CABEÇALHO CORRIGIDO
            DrawerHeader(
              decoration: const BoxDecoration(
                color: azulMarinha,
              ),

              margin: EdgeInsets.zero,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [

                  CircleAvatar(
                    radius: 28,
                    backgroundColor: branco,
                    child: Icon(
                      Icons.menu_book,
                      size: 32,
                      color: azulMarinha,
                    ),
                  ),

                  SizedBox(height: 10),

                  Flexible(
                    child: Text(
                      "Memórias da Segunda Guerra",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: branco,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            _menuItem(
              context,
              icone: Icons.home,
              titulo: "Página Inicial",
              rota: '/inicio',
              limparRotas: true,
            ),

            _menuItem(
              context,
              icone: Icons.menu_book,
              titulo: "Conteúdos",
              rota: '/conteudos',
            ),

            _menuItem(
              context,
              icone: Icons.quiz,
              titulo: "Atividades / Quiz",
              rota: '/quiz',
            ),

            _menuItem(
              context,
              icone: Icons.info,
              titulo: "Sobre",
              rota: '/sobre',
            ),
          ],
        ),
      ),

      // =============================
      // APPBAR
      // =============================
      appBar: AppBar(
        backgroundColor: azulMarinha,
        centerTitle: true,
        elevation: 4,
        title: const Text(
          "História da Segunda Guerra",
          style: TextStyle(
            color: branco,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),

      // =============================
      // CORPO
      // =============================
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [

              const SizedBox(height: 10),

              // TÍTULO
              const Text(
                "Time War",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: carbono,
                ),
              ),

              const SizedBox(height: 10),

              // SUBTÍTULO
              const Text(
                "Disciplina: História",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: carbono,
                ),
              ),

              const SizedBox(height: 30),

              // =============================
              // CARROSSEL ESTILO MUSEU
              // =============================
              SizedBox(
                height: 300,

                child: Stack(
                  alignment: Alignment.center,

                  children: [

                    // FUNDO HISTÓRICO
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),

                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: imagensHistoricas.length,

                        itemBuilder: (context, index) {
                          return ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.45),
                              BlendMode.darken,
                            ),

                            child: Image.asset(
                              imagensHistoricas[index],
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    ),

                    // LOGO
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.88),
                        shape: BoxShape.circle,
                      ),

                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // FRASE
                    const Positioned(
                      bottom: 18,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Memórias que marcaram o mundo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: branco,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

             Card( color: branco, elevation: 4, shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15), ), child: const Padding( padding: EdgeInsets.all(20), child: Text( "Viaje pelos principais momentos da Segunda Guerra Mundial e descubra como esse conflito transformou nações, mudou fronteiras e marcou profundamente a humanidade. Conheça fatos históricos, personagens importantes e os impactos que permanecem até hoje.", textAlign: TextAlign.center, style: TextStyle( fontSize: 18, color: carbono, height: 1.6, ), ), ), ),

             const SizedBox(height: 30),

            // IMAGEM RETANGULAR
            Card(
              color: branco,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),

                child: Image.asset(
                  'assets/images/mapa_mental.jpg',
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),

              const SizedBox(height: 30),

              // BOTÃO
              SizedBox(
                width: double.infinity,

                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: azulMarinha,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  onPressed: () {
                    Navigator.pushNamed(context, '/conteudos');
                  },

                  icon: const Icon(
                    Icons.arrow_forward,
                    color: branco,
                  ),

                  label: const Text(
                    "Começar Estudos",
                    style: TextStyle(
                      fontSize: 18,
                      color: branco,
                      fontWeight: FontWeight.bold,
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

  // =============================
  // ITEM PADRÃO MENU
  // =============================
  static Widget _menuItem(
    BuildContext context, {
    required IconData icone,
    required String titulo,
    required String rota,
    bool limparRotas = false,
  }) {
    return ListTile(
      leading: Icon(
        icone,
        color: carbono,
      ),

      title: Text(
        titulo,
        style: const TextStyle(
          color: carbono,
          fontSize: 16,
        ),
      ),

      onTap: () {
        Navigator.pop(context);

        if (limparRotas) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            rota,
            (route) => false,
          );
        } else {
          Navigator.pushNamed(context, rota);
        }
      },
    );
  }
}