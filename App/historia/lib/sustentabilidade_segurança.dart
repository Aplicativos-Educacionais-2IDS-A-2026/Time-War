import 'package:flutter/material.dart';

class Sustentabilidade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sustentabilidade e Segurança',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF7B4FA3),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(height: 20),

              const SizedBox(height: 20),

              Text(
                "Práticas Sustentáveis",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 54, 2, 110),
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 185, 163, 208),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "A indústria química adota processos de produção sustentáveis, "
                      "otimizando o consumo de energia, água e matérias-primas, além de reduzir resíduos e emissões poluentes.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ),

              Text(
                "Cuidados com o Meio Ambiente",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 54, 2, 110),
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 185, 163, 208),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "• Tratamento e reciclagem de resíduos químicos antes do descarte.\n"
                      "• Monitoramento e controle de emissões atmosféricas e efluentes.\n"
                      "• Uso de tecnologias para minimizar impactos ambientais.\n"
                      "• Programas de preservação da biodiversidade local.\n"
                      "• Educação ambiental e conscientização dos funcionários sobre práticas ecológicas.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ),

              Text(
                "Normas de Segurança Industrial",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 54, 2, 110),
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 185, 163, 208),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "A empresa garante segurança no ambiente industrial com uso de EPIs, "
                      "treinamento contínuo, sistemas de contenção de produtos perigosos e cumprimento rigoroso de normas legais e regulamentações do setor químico.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}