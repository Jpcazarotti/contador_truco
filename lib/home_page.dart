import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        child: const Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 60, color: Color(0xffe22364)),
                            // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
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
                      ElevatedButton(
                        onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                        child: const Center(
                          child: Text(
                            "6",
                            style: TextStyle(
                                fontSize: 60, color: Color(0xffe22364)),
                            // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
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
                      ElevatedButton(
                        onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffe22364)),
                  ),
                  Text(
                    "Vitórias",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7d6b7d)),
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffe22364)),
                  ),
                  SizedBox(
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
                          onPressed: () {},
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
                          onPressed: () {},
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
