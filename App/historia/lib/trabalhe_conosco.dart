import 'package:flutter/material.dart';

class Trabalhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trabalhe Conosco',
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
                "Áreas de atuação",
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
    """1. Química Básica
  -Produção de produtos químicos fundamentais, que servem como matéria-prima para outras indústrias.
  -Exemplos: ácidos (ácido sulfúrico, ácido clorídrico), bases (hidróxido de sódio), sais industriais.

2. Química Orgânica
  -Produção de compostos baseados em carbono.
  -Exemplos: plásticos, resinas, tintas, solventes, fármacos, lubrificantes.

3. Química Inorgânica
  -Produção de compostos que não têm carbono como base.
  -Exemplos: fertilizantes (nitrato de amônio), pigmentos, cerâmicas, explosivos.

4. Fármacos e Biotecnologia
  -Desenvolvimento e fabricação de medicamentos, vacinas e produtos bioquímicos.
  -Inclui química fina e química farmacêutica.

5. Química Ambiental
  -Produção de produtos e processos para tratar água, ar e resíduos.
  -Exemplos: detergentes biodegradáveis, produtos para tratamento de efluentes.

6. Energia e Combustíveis
  -Produção de combustíveis químicos e derivados de petróleo.
  -Exemplos: gasolina, diesel, biocombustíveis, produtos petroquímicos.

7. Alimentos e Cosméticos
  -Produção de aditivos, conservantes, corantes e fragrâncias.
  -Inclui também produtos para higiene pessoal e cosméticos.

8. Materiais Avançados
  -Produção de polímeros especiais, nanotecnologia, materiais para eletrônicos e baterias.

9. Química de Especialidades
  -Produtos químicos de alto valor agregado, produzidos em menor escala.
  -Exemplos: catalisadores, tintas especiais, adesivos, solventes finos.
""",
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
                "Tipos de vagas",
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
                      """ 1. Vagas de Tempo Integral (Full-time)
  -Trabalha em período integral (geralmente 40–44 horas/semana).
  -Benefícios completos (férias, 13º, plano de saúde).
  -Exemplo: engenheiro químico em indústria, analista de marketing. 

2. Vagas de Meio Período (Part-time)
  -Trabalha algumas horas por dia ou semana.
  -Flexível, normalmente com benefícios limitados.
  -Exemplo: assistente administrativo part-time, monitor de laboratório.

3. Estágio
  -Voltado para estudantes que querem experiência prática.
  -Geralmente tem carga horária reduzida e bolsa-auxílio.
  -Exemplo: estágio em química, engenharia, TI.

4. Aprendiz / Jovem Aprendiz
  -Para jovens em início de carreira, combina trabalho e estudo.
  -Benefícios de aprendizado e experiência profissional.
  -Exemplo: aprendiz em indústria química ou comércio.

5. Freelancer / Autônomo
  -Trabalho por projeto ou serviço, sem vínculo empregatício fixo.
  -Flexível, pagamento por tarefa ou contrato.
  -Exemplo: designer gráfico freelance, consultor de processos químicos.

6. Temporário
  -Contrato por tempo limitado, normalmente para substituir férias ou demandas sazonais.
  -Exemplo: operador de produção temporário em fábrica durante alta demanda.

7. Remoto / Home Office
  -Trabalho feito à distância, sem necessidade de ir ao escritório.
  -Pode ser full-time ou part-time.
  -Exemplo: programador remoto, assistente administrativo remoto.

8. Comissionado
  -Pagamento baseado em vendas ou resultados.
  -Exemplo: representante comercial, corretor de seguros. """,
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
                "Perfil profissional desejado",
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
                      "O perfil profissional desejado inclui formação compatível com a vaga e conhecimento técnico da área, como processos, normas e ferramentas específicas. Além disso, é importante ter habilidades comportamentais, como boa comunicação, proatividade, organização, resolução de problemas e adaptabilidade. Experiência prática, mesmo em estágios ou projetos acadêmicos, é valorizada, assim como competências complementares, como idiomas e uso de softwares. Por fim, são valorizados comprometimento, ética, responsabilidade e interesse em aprendizado contínuo.",
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