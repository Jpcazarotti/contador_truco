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
      body: const Column(
        children: [
          Row(
            children: [
              Column(),
              Column(),
            ],
          ),
        ],
      ),
    );
  }
}
