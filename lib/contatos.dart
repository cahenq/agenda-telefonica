import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Contatos(),
  ));
}

class Contatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: Center(
        child: Text('Conteúdo da tela Contatos'),
      ),
    );
  }
}
