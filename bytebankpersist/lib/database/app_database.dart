import 'package:BytebankPersist/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() async {
  String diretorioBancos = await getDatabasesPath();
  String caminhoCompletoDoBanco = join(diretorioBancos, 'bytebank.db');
  return openDatabase(
    caminhoCompletoDoBanco,
    version: 1,
    // onDowngrade: onDatabaseDowngradeDelete,
    onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'account_number INTEGER)');
    },
  );
}

Future<int> save(Contact contact) async {
  Map<String, dynamic> contactMap = Map();
  contactMap['name'] = contact.fullName;
  contactMap['account_number'] = contact.accountNumber;

  Database database = await createDatabase();
  return database.insert('contacts', contactMap);
}

Future<List<Contact>> findAll() async {
  Database database = await createDatabase();
  List<Map<String, dynamic>> rows = await database.query('contacts');

  List<Contact> contacts = List();
  for (Map<String, dynamic> row in rows) {
    Contact contact =
    Contact(row['name'], row['account_number'], id: row['id']);
    contacts.add(contact);
  }
  return contacts;
}
