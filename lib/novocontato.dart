import 'package:flutter/material.dart';
import 'package:agendatelefonica/contatos.dart';

void main() {
  runApp(const NovoContato());
}

class NovoContato extends StatelessWidget {
  const NovoContato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFD8BDAD),
          title: const Text(
            'NOVO CONTATO',
            style: TextStyle(
              color: Color(0xFF7A3B15),
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFFE7E5E5),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Center(
                    child: SizedBox(
                      width: 102,
                      height: 102,
                      child: Image.asset(
                        'assets/imagens/user.png',
                        width: 102,
                        height: 102,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  width: double.infinity,
                  height: 1,
                  color: const Color(0xFFE7E5E5),
                ),
                const Text(
                  'NOME:',
                  style: TextStyle(
                    color: Color(0xFFE8E6E6),
                    fontSize: 15,
                    fontFamily: 'Jua',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  width: 206,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFB86B3D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Nome',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'TELEFONE:',
                  style: TextStyle(
                    color: Color(0xFFE8E6E6),
                    fontSize: 15,
                    fontFamily: 'Jua',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  width: 206,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFB86B3D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Telefone',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'EMAIL:',
                  style: TextStyle(
                    color: Color(0xFFE8E6E6),
                    fontSize: 15,
                    fontFamily: 'Jua',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  width: 206,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFB86B3D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                
                Align(
                  alignment: Alignment.center,
                  child: FractionallySizedBox(
                    widthFactor: 0.1,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contatos()),
                );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFB86B3D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        'SALVAR',
                        style: TextStyle(
                          color: Color(0xFFE8E6E6),
                          fontFamily: 'Jua',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}