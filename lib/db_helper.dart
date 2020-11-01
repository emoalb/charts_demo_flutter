import 'package:charts_demo_flutter/entry.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  DBHelper._();

  static Database _database;

  static final DBHelper dbHelper = DBHelper._();
autoGenerateId (){

}
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    return openDatabase(
      join(await getDatabasesPath(), 'entry_database.db'),
      onCreate: (db, ver) {
        return db
            .execute("CREATE TABLE IF NOT EXISTS entry(id INTEGER PRIMARY KEY AUTOINCREMENT, item TEXT)");
      },
      version: 1,
    );
  }

  insertEntry(Entry entry) async {
    final db = await database;
    var response = await db.insert("entry", entry.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
   // return response;
  }

}
