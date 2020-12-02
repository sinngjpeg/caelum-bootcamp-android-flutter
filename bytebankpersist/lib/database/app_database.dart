import 'package:BytebankPersist/database/dao/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  String diretorioBancos = await getDatabasesPath();
  String caminhoCompletoDoBanco = join(diretorioBancos, 'bytebank.db');

  return openDatabase(
    caminhoCompletoDoBanco,
    version: 1,
    // onDowngrade: onDatabaseDowngradeDelete,
    onCreate: (db, version) {
      db.execute(ContactDao.TABLE_SQL);
    },
  );
}
