import 'package:BytebankPersist/models/contact.dart';
import 'package:sqflite/sqflite.dart';

import '../app_database.dart';

class ContactDao {
  static const String _tableName = 'contacts';
  static const String _campoId = 'id';
  static const String _campoName = 'name';
  static const String _campoAccountNumber = 'account_number';

  static const String TABLE_SQL = 'CREATE TABLE $_tableName('
      '$_campoId INTEGER PRIMARY KEY, '
      '$_campoName TEXT, '
      '$_campoAccountNumber INTEGER)';

  Future<int> save(Contact contact) async {
    Map<String, dynamic> contactMap = Map();
    contactMap[_campoName] = contact.fullName;
    contactMap[_campoAccountNumber] = contact.accountNumber;

    Database database = await getDatabase();
    return database.insert('$_tableName', contactMap);
  }

  Future<List<Contact>> findAll() async {
    Database database = await getDatabase();
    List<Map<String, dynamic>> rows = await database.query('$_tableName');

    List<Contact> contacts = toList(rows);
    return contacts;
  }

  List<Contact> toList(List<Map<String, dynamic>> rows) {
    List<Contact> contacts = List();
    for (Map<String, dynamic> row in rows) {
      Contact contact = Contact(row['$_campoName'], row['$_campoAccountNumber'],
          id: row['$_campoId']);
      contacts.add(contact);
    }
    return contacts;
  }
}
