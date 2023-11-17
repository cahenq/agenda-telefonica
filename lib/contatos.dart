import 'package:flutter/material.dart';
import 'package:agendatelefonica/api.dart'; // Importe a classe para interagir com os contatos

void main() {
  runApp(const MaterialApp(
    home: Contatos(),
    debugShowCheckedModeBanner: false, 
  ));
}

class Contatos extends StatefulWidget {
  const Contatos({Key? key}) : super(key: key);

  @override
  _ContatosState createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  late List<Contact> contacts;

  @override
  void initState() {
    super.initState();
    
    loadContacts();
  }

  Future<void> loadContacts() async {
    
    contacts = await ContactsAPI.getAllContacts();
    setState(() {});
  }

  Future<void> deleteContact(String contactId) async {
    
    await ContactsAPI.deleteContact(contactId);
    
    await loadContacts();
  }

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
      body: contacts.isNotEmpty
          ? ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return ListTile(
                  title: Text(contact.name),
                  subtitle: Text(contact.phoneNumber),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => deleteContact(contact.id),
                  ),
                );
              },
            )
          : Center(
              // Se não houver contatos salvos, exiba uma mensagem
              child: Text('Nenhum contato encontrado.'),
            ),
    );
  }
}
