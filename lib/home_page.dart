import 'package:contador_truco/vitoria_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _placarNos = 0;
  int _placarEles = 0;
  int _vitoriasNos = 0;
  int _vitoriasEles = 0;

  void aumentarPontos(String grupo, int pontos) {
    if (grupo == "Nós") {
      setState(() {
        _placarNos += pontos;
        if (_placarNos >= 12) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VitoriaPage(
                  nomeGrupo: "Nós Vencemos",
                ),
              ));
          _vitoriasNos++;
          novaPartida();
        }
      });
    }
    if (grupo == "Eles") {
      setState(() {
        _placarEles += pontos;
        if (_placarEles >= 12) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VitoriaPage(
                  nomeGrupo: "Eles Venceram",
                ),
              ));
          _vitoriasEles += 1;
          novaPartida();
        }
      });
    }
  }

  void diminuirPontos(String grupo) {
    if (grupo == "Nós") {
      setState(() {
        _placarNos -= 1;
        if (_placarNos <= 0) {
          _placarNos = 0;
        }
      });
    }
    if (grupo == "Eles") {
      setState(() {
        _placarEles -= 1;
        if (_placarEles <= 0) {
          _placarEles = 0;
        }
      });
    }
  }

  void novaPartida() {
    setState(() {
      _placarNos = 0;
      _placarEles = 0;
    });
  }

  void novoTorneio() {
    setState(() {
      _placarNos = 0;
      _placarEles = 0;
      _vitoriasNos = 0;
      _vitoriasEles = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de Truco",
            style: TextStyle(fontWeight: FontWeight.w400)),
        backgroundColor: const Color(0xFF7D6B7D),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      const Text(
                        "Nós",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF7D6B7D)),
                      ),
                      Container(
                        width: 120,
                        margin: const EdgeInsets.only(top: 2),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xFFFFFFDC),
                            border: Border.all(width: 1, color: Colors.black45),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            _placarNos.toString(),
                            style: const TextStyle(
                                fontSize: 60, color: Color(0xffe22364)),
                            // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          diminuirPontos("Nós");
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xffe5e5e5),
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 2, color: const Color(0xff707070)),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.45),
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ],
                          ),
                          child: const Text(
                            '-1',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF707070)),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          aumentarPontos("Nós", 1);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff7d6b7d),
                            minimumSize: const Size(120, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 10),
                        child: const Text(
                          "+1",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            aumentarPontos("Nós", 3);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff7d6b7d),
                              minimumSize: const Size(120, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 10),
                          child: const Text("+3",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ))),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            aumentarPontos("Nós", 6);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff7d6b7d),
                              minimumSize: const Size(120, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 10),
                          child: const Text("+6",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ))),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      const Text(
                        "Eles",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF7D6B7D)),
                      ),
                      Container(
                        width: 120,
                        margin: const EdgeInsets.only(top: 2),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xFFFFFFDC),
                            border: Border.all(width: 1, color: Colors.black45),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            _placarEles.toString(),
                            style: const TextStyle(
                                fontSize: 60, color: Color(0xffe22364)),
                            // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          diminuirPontos("Eles");
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xffe5e5e5),
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 2, color: const Color(0xff707070)),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.45),
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Text(
                            '-1',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF707070)),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          aumentarPontos("Eles", 1);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff7d6b7d),
                            minimumSize: const Size(120, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 10),
                        child: const Text(
                          "+1",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            aumentarPontos("Eles", 3);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff7d6b7d),
                              minimumSize: const Size(120, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 10),
                          child: const Text("+3",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ))),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            aumentarPontos("Eles", 6);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff7d6b7d),
                              minimumSize: const Size(120, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 10),
                          child: const Text("+6",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ))),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/banner-cartas.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    _vitoriasNos.toString(),
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffe22364)),
                  ),
                  const Text(
                    "Vitórias",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7d6b7d)),
                  ),
                  Text(
                    _vitoriasEles.toString(),
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffe22364)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                          onPressed: () {
                            novaPartida();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff7d6b7d),
                            minimumSize: const Size(0, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 10,
                            shadowColor: Colors.black.withOpacity(1),
                          ),
                          child: const Text("Zerar Partida",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ))),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                          onPressed: () {
                            novoTorneio();
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(0, 60),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 10,
                            // shadowColor: Colors.black.withOpacity(1), * O ElevatedButton já tem uma sombre, apenas por o Elevation e já fica bom!! *
                          ),
                          child: const Text("Zerar Jogo",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff7d6b7d),
                              ))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
