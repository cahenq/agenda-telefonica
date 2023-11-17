
import 'package:sqflite/sqflite.dart'; 

class ContactsAPI {
  static Future<Database> get database async {
    
    final database = await openDatabase(
      'contacts_database.db', 
      version: 1,
      onCreate: (db, version) {
        
        return db.execute(
          'CREATE TABLE contacts(id INTEGER PRIMARY KEY, name TEXT, phoneNumber TEXT, email TEXT)',
        );
      },
    );
    return database;
  }

  static Future<void> addContact(Contact contact) async {
    final db = await database;
    await db.insert(
      'contacts',
      contact.toMap(), 
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  
  static openDatabase(String s, {required int version, required Function(dynamic db, dynamic version) onCreate}) {}

  static getAllContacts() {}

  static deleteContact(String contactId) {}
}

class ConflictAlgorithm {
  static var replace;
}

class Database {
  insert(String s, Map<String, dynamic> map, {required conflictAlgorithm}) {}
}

class Contact {
  final String id;
  final String name;
  final String phoneNumber;
  final String email;

  Contact({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }
}
