import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NovoContato(),
  ));
}

class NovoContato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
      ),
      body: Center(
        child: Text('Conteúdo da tela Novo Contato'),
      ),
    );
  }
}
