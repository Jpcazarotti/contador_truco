import 'package:flutter/material.dart';

class VitoriaPage extends StatelessWidget {
  final String nomeGrupo;

  const VitoriaPage({super.key, required this.nomeGrupo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Vitória",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff7d6b7d),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$nomeGrupo!",
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7d6b7d)),
            ),
            const Text(
              "Parabéns!",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.orange),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset('assets/trofeu.png')
          ],
        ),
      ),
    );
  }
}
