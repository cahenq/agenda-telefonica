import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Contatos(),
  ));
  debugShowCheckedModeBanner: false;
}

class Contatos extends StatelessWidget {
  const Contatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      backgroundColor: const Color(0xFFD8BDAD), 
        title: const Text(
          'CONTATOS',
          style: TextStyle(
            color: Color(0xFF7A3B15), 
            fontSize: 20,
            fontFamily: 'Jua',
            fontWeight: FontWeight.w400,
            height: 0
          ),
        ),
        centerTitle: true,
        
        
      
        
        
      ),
      body: const Center(
      ),
    );
  }

}
