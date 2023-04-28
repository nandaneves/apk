import 'package:flutter/material.dart';

void main() {
  runApp(Meuapp());
}

class Meuapp extends StatelessWidget {
  Meuapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaHome(),
    );
  }
}

class PaginaHome extends StatefulWidget {
  const PaginaHome({super.key});

  @override
  State<PaginaHome> createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {
  int contador = 0;
  // ignore: non_constant_identifier_names
  void aluno_entrou() {
    setState(() {
      contador++;
    });
    print(contador);
  }

  void aluno_saiu() {
    setState(() {
      contador--;
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("aplicativo saida de alunos "),
        backgroundColor: Colors.blue,
        shadowColor: const Color.fromARGB(255, 217, 0, 255),
      ),
      drawer: const Drawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/emma.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          /*star ou end*/
          children: [
            const Text(
              "comportamento dos alunos",
              style: TextStyle(
                fontSize: 35,
                color: Colors.green,
                fontWeight: FontWeight.w500,
                letterSpacing: 6,
              ),
            ),
            const Text(
              "feito por mimmmmmm *fernanda",
              style: TextStyle(
                fontSize: 35,
                color: Colors.green,
                fontWeight: FontWeight.w500,
                letterSpacing: 6,
              ),
            ),
            Text(
              "$contador",
              style: const TextStyle(
                fontSize: 35,
                color: Colors.red,
                fontWeight: FontWeight.w500,
                letterSpacing: 6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: aluno_entrou,
                  child: Text("entrou"),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 221, 0, 155),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 64,
                ),
                TextButton(
                  onPressed: aluno_saiu,
                  child: const Text("saiu"),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 221, 0, 155),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
