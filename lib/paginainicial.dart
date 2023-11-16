import 'package:flutter/material.dart';
import 'package:agendatelefonica/contatos.dart';
import 'package:agendatelefonica/novocontato.dart';

void main() {
  runApp(const InicialPage());
}

class InicialPage extends StatelessWidget {
  const InicialPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFE7E5E5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/imagens/image 1.png'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFB86B3D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NovoContato()),
                );
              },
              child: Text(
                'Novo Contato',
                style: TextStyle(
                  color: const Color(0xFFE7E5E5),
                  fontSize: 20,
                  fontFamily: 'Jua',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFB86B3D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contatos()),
                );
              },
              child: Text(
                'Contatos',
                style: TextStyle(
                  color: const Color(0xFFE7E5E5),
                  fontSize: 20,
                  fontFamily: 'Jua',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
