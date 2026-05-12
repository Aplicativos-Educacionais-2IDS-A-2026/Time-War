// =============================
// pagina_detalhes.dart
// =============================
import 'package:flutter/material.dart';

class PaginaDetalhes extends StatelessWidget {
  const PaginaDetalhes({super.key});

  // PALETA
  static const Color fundoDocumento = Color(0xFFDED4BC);
  static const Color azulMarinha = Color(0xFF384552);
  static const Color carbono = Color(0xFF1A1A1A);

  @override
  Widget build(BuildContext context) {
    final String titulo =
        ModalRoute.of(context)!.settings.arguments as String? ??
            "Causas da Segunda Guerra";

    String explicacao = "";
    String exemplo = "";
    String imagem = "";
    String legenda = "";

    // =============================
    // CONTEÚDOS
    // =============================
    if (titulo == "Causas da Segunda Guerra") {
      explicacao =
          "A Segunda Guerra Mundial teve origem em fatores políticos, econômicos e ideológicos. O Tratado de Versalhes (1919) impôs punições severas à Alemanha após a Primeira Guerra Mundial, gerando crise econômica, desemprego e sentimento de humilhação nacional. Adolf Hitler utilizou esse cenário para fortalecer o nazismo, defendendo militarismo, nacionalismo extremo e expansão territorial. A política de apaziguamento das potências europeias permitiu avanços alemães até a invasão da Polônia em 1939.";

      exemplo =
          "Exemplo detalhado: Em 1º de setembro de 1939, a Alemanha invadiu a Polônia com a estratégia Blitzkrieg (guerra-relâmpago), baseada em ataques rápidos com tanques, infantaria e força aérea. Reino Unido e França declararam guerra logo depois.";

      imagem = "assets/images/invasao_polonia.png";

      legenda =
          "Invasão da Polônia (1939) — início oficial da Segunda Guerra Mundial.";

    } else if (titulo == "Principais Batalhas") {
      explicacao =
          "Diversas batalhas definiram o rumo da guerra. A Batalha da Inglaterra impediu a invasão nazista ao Reino Unido. Pearl Harbor levou os EUA ao conflito. A Batalha de Stalingrado enfraqueceu severamente a Alemanha no front oriental. O Dia D, em 1944, marcou o desembarque aliado na Normandia e o início da libertação da Europa Ocidental.";

      exemplo =
          "Exemplo detalhado: Na Batalha de Stalingrado (1942-1943), tropas soviéticas cercaram e derrotaram o exército alemão, marcando um dos maiores pontos de virada da guerra.";

      imagem = "assets/images/dia_d.png";

      legenda =
          "Desembarque aliado na Normandia (Dia D, 1944).";

    } else if (titulo == "Holocausto") {
      explicacao =
          "O Holocausto foi o genocídio sistemático promovido pelo regime nazista durante a Segunda Guerra Mundial, resultando no assassinato de cerca de seis milhões de judeus, além de milhões de outras vítimas, como ciganos, opositores políticos, pessoas com deficiência e prisioneiros de guerra. Judeus foram perseguidos, expulsos de suas casas, confinados em guetos e enviados para campos de concentração e extermínio. Esse período representa uma das maiores tragédias humanitárias da história, marcada pela violência, pela desumanização e pela luta pela sobrevivência.\n\n"
          "Em muitas cidades ocupadas, famílias judias inteiras foram obrigadas a viver em guetos superlotados, sob fome, medo e violência constante. Ainda assim, muitos resistiram, fugiram e lutaram contra o regime nazista.";

      exemplo =
          "Relato de sobrevivência:\n\n"
          "Lisa era uma das três crianças nascidas em uma família judia religiosa. Após a ocupação alemã de sua cidade natal em 1939, sua família fugiu para Augustow e depois para Slonim, no leste da Polônia. Em junho de 1941, Slonim foi ocupada, e os nazistas estabeleceram um gueto.\n\n"
          "Lisa conseguiu escapar, fugindo para Grodno e depois Vilna. Lá, entrou para o movimento de resistência judaica, unindo-se a guerrilheiros que lutavam contra os alemães na Floresta de Naroch.\n\n"
          "Em 1944, a região foi libertada. Depois da guerra, Lisa e seu marido Aron participaram do movimento Brihah, que ajudou sobreviventes judeus a deixarem a Europa. Sem conseguir entrar na Palestina, reconstruíram suas vidas nos Estados Unidos.";

      imagem = "assets/images/medicos.png";

      legenda =
          "Médico Soviético Examinando Sobreviventes do Campo de Auschwitz";

    } else {
      explicacao =
          "Após 1945, o mundo passou por grandes transformações políticas e sociais. A ONU foi criada para promover paz internacional. Alemanha e Berlim foram divididas, simbolizando a rivalidade entre Estados Unidos e União Soviética durante a Guerra Fria. O Plano Marshall ajudou na reconstrução europeia, enquanto processos de descolonização ganharam força.";

      exemplo =
          "Exemplo detalhado: Os Julgamentos de Nuremberg responsabilizaram líderes nazistas por crimes de guerra e crimes contra a humanidade.";

      imagem = "assets/images/pos_guerra.png";

      legenda =
          "O pós-guerra redefiniu a ordem mundial.";
    }

    return Scaffold(
      backgroundColor: fundoDocumento,

      // =============================
      // APPBAR
      // =============================
      appBar: AppBar(
        backgroundColor: azulMarinha,
        centerTitle: true,
        title: const Text(
          "Detalhes do Conteúdo",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // =============================
      // MENU LATERAL
      // =============================
      drawer: Drawer(
        backgroundColor: fundoDocumento,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: azulMarinha,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.menu_book,
                    size: 60,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Memórias da Segunda Guerra",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home, color: carbono),
              title: const Text("Página Inicial"),
              onTap: () => Navigator.pushNamed(context, '/inicio'),
            ),

            ListTile(
              leading: const Icon(Icons.menu_book, color: carbono),
              title: const Text("Conteúdos"),
              onTap: () => Navigator.pushNamed(context, '/conteudos'),
            ),

            ListTile(
              leading: const Icon(Icons.quiz, color: carbono),
              title: const Text("Quiz"),
              onTap: () => Navigator.pushNamed(context, '/quiz'),
            ),

            ListTile(
              leading: const Icon(Icons.info, color: carbono),
              title: const Text("Sobre"),
              onTap: () => Navigator.pushNamed(context, '/sobre'),
            ),
          ],
        ),
      ),

      // =============================
      // CORPO
      // =============================
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // TÍTULO
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: azulMarinha,
              ),
            ),

            const SizedBox(height: 20),

            // IMAGEM PRINCIPAL
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagem,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              legenda,
              style: const TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 20),

            // IMAGEM SECUNDÁRIA
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                titulo == "Causas da Segunda Guerra"
                    ? "assets/images/tratado_versalhes.png"
                    : titulo == "Principais Batalhas"
                        ? "assets/images/stalingrado.png"
                        : titulo == "Holocausto"
                            ? "assets/images/resistencia.png"
                            : "assets/images/onu.png",
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              titulo == "Causas da Segunda Guerra"
                  ? "Tratado de Versalhes — origem do revanchismo alemão."
                  : titulo == "Principais Batalhas"
                      ? "Stalingrado — derrota decisiva alemã."
                      : titulo == "Holocausto"
                          ? "Resistência judaica e sobrevivência durante a perseguição."
                          : "ONU — tentativa de preservar a paz mundial.",
              style: const TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 25),

            // EXPLICAÇÃO
            const Text(
              "Explicação Detalhada:",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: carbono,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              explicacao,
              style: const TextStyle(
                fontSize: 18,
                color: carbono,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 25),

            // EXEMPLO
            const Text(
              "Exemplo / Relato:",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: carbono,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              exemplo,
              style: const TextStyle(
                fontSize: 18,
                color: carbono,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 25),

            // LINHA DO TEMPO
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: azulMarinha,
                  width: 1.5,
                ),
              ),
              child: Text(
                titulo == "Causas da Segunda Guerra"
                    ? "Linha do Tempo:\n1919 - Tratado de Versalhes\n1933 - Hitler assume poder\n1938 - Expansão alemã\n1939 - Invasão da Polônia"
                    : titulo == "Principais Batalhas"
                        ? "Linha do Tempo:\n1940 - Batalha da Inglaterra\n1941 - Pearl Harbor\n1942 - Stalingrado\n1944 - Dia D"
                        : titulo == "Holocausto"
                            ? "Linha do Tempo:\n1933 - Início da perseguição\n1939 - Guetos\n1941 - Massacres\n1942 - Solução Final\n1944 - Libertação"
                            : "Linha do Tempo:\n1945 - Fim da guerra\n1945 - ONU\n1947 - Guerra Fria\n1961 - Muro de Berlim",
                style: const TextStyle(
                  fontSize: 16,
                  color: carbono,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 35),

            // BOTÃO VOLTAR
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: azulMarinha,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Voltar",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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