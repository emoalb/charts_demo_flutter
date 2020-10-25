import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<String> getDbbasePath() async{
 String dbPath  = await getDatabasesPath();
 return dbPath;
}

// final Future<Database> database = openDatabase (
//
//     join( getDbbasePath()), 'entry_database.db'),
// // When the database is first created, create a table to store dogs.
//     onCreate: (db, version) {
// return db.execute(
// "CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)",
// );
// },
// // Set the version. This executes the onCreate function and provides a
// // path to perform database upgrades and downgrades.
// version: 1,
// );