import 'package:BytebankPersist/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');

    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'account_number INTEGER)');
    }, version: 1, onDowngrade: onDatabaseDowngradeDelete);
  });
}

Future<int> save(Contact contact) {
  Map<String, dynamic> contactMap = Map();
  contactMap['name'] = contact.fullName;
  contactMap['account_number'] = contact.accountNumber;

  return createDatabase().then((database) {
    return database.insert('contacts', contactMap);
  });
}

Future<List<Contact>> findAll() {
  return createDatabase().then((database) {
    return database.query('contacts').then((rows) {
      List<Contact> contacts = List();
      for (Map<String, dynamic> row in rows) {
        Contact contact =
        Contact(row['name'], row['account_number'], id: row['id']);
        contacts.add(contact);
      }
      return contacts;
    });
  });
}
