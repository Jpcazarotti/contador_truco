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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Nós",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF7D6B7D)),
                  ),
                  Container(
                    width: 120,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFDC),
                        border: Border.all(width: 1, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 60, color: Colors.red),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xffe5e5e5),
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 2, color: const Color(0xff707070))),
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
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "+1",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7d6b7d),
                          minimumSize: const Size(120, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text("+3",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ))),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7d6b7d),
                          minimumSize: const Size(120, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text("+6",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ))),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Eles",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF7D6B7D)),
                  ),
                  Container(
                    width: 120,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFDC),
                        border: Border.all(width: 1, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "6",
                        style: TextStyle(fontSize: 60, color: Colors.red),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xffe5e5e5),
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 2, color: const Color(0xff707070))),
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
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "+1",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7d6b7d),
                          minimumSize: const Size(120, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text("+3",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ))),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7d6b7d),
                          minimumSize: const Size(120, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text("+6",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ))),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
