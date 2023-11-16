import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Contatos(),
  ));
}

class Contatos extends StatelessWidget {
  const Contatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contatos'),
      ),
      body: const Center(
        child: Text('Conteúdo da tela Contatos'),
      ),
    );
  }
}
