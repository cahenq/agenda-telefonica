import 'package:flutter/material.dart';
import 'package:agendatelefonica/api.dart'; // Importe sua classe ContactsAPI
import 'package:agendatelefonica/contatos.dart'; // Importe o arquivo Contatos

class NovoContato extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _nameController,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _phoneController,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _emailController,
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
                    onPressed: () async {
                      Contact newContact = Contact(
                        id: '0', // Defina '0' ou outro valor padrão para o ID
                        name: _nameController.text,
                        phoneNumber: _phoneController.text,
                        email: _emailController.text,
                      );
                      await ContactsAPI.addContact(newContact); // Adiciona o novo contato no banco de dados
                      Navigator.pop(context);
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
    );
  }
}
