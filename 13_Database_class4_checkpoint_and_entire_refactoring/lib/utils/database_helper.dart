// Section 1: Import the libraries this file needs.
import 'dart:io';

import 'package:database_prep/models/note.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // Section 2: Create one shared DatabaseHelper (singleton).
  // The first call creates it. Every later call returns that same object.
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._createInstance();

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper!;
  }

  // Section 3: Names of the table and its columns.
  static const String noteTable = 'note_table';
  static const String colId = 'id';
  static const String colTitle = 'title';
  static const String colDescription = 'description';
  static const String colPriority = 'priority';
  static const String colDate = 'date';

  // Section 4: Open the database and create the table the first time.
  // _database stays null until the file is opened, then it is reused.
	//4a
  static Database? _database;

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database!;
  }

  // Builds the path to notes.db and opens it.
  // _createDb runs only when that file is created for the first time.
  //4b
  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = '${directory.path}${Platform.pathSeparator}notes.db';

    return openDatabase(path, version: 1, onCreate: _createDb);
  }

  // Creates empty note_table.
  //4c
  Future<void> _createDb(Database db, int version) async {
    await db.execute(
      'CREATE TABLE $noteTable ('
      '$colId INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$colTitle TEXT, '
      '$colDescription TEXT, '
      '$colPriority INTEGER, '
      '$colDate TEXT)',
    );
  }

  //CRUD operations
  // Section 5: Create — insert one note.
  // Returns the id SQLite gives the new row.
  Future<int> insertNote(Note note) async {
    Database db = await database;
    return db.rawInsert(
      'INSERT INTO $noteTable '
      '($colTitle, $colDescription, $colPriority, $colDate) '
      'VALUES (?, ?, ?, ?)',
      [note.title, note.description, note.priority, note.date],
    );
  }

  // Section 6: Read — get notes from the database.
  // Returns every row as a Map. (list of Maps)
  //6a
  Future<List<Map<String, dynamic>>> getNoteMapList() async {
    Database db = await database;
    return db.rawQuery(
      'SELECT * FROM $noteTable ORDER BY $colPriority ASC',
    );
  }

  // Turns each Map from getNoteMapList into a Note.
  //6b
  Future<List<Note>> getNoteList() async {
    List<Map<String, dynamic>> noteMapList = await getNoteMapList();

    List<Note> noteList = <Note>[];
    for (Map<String, dynamic> noteMap in noteMapList) {
      noteList.add(Note.fromMapObject(noteMap));
    }
    return noteList;
  }

  // Returns how many notes are stored.
  //6c
  Future<int> getCount() async {
    Database db = await database;
    List<Map<String, dynamic>> result = await db.rawQuery(
      'SELECT COUNT(*) FROM $noteTable',
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }

  // Section 7: Update — change an existing note.
  // Returns how many rows changed.
  Future<int> updateNote(Note note) async {
    Database db = await database;
    return db.rawUpdate(
      'UPDATE $noteTable SET '
      '$colTitle = ?, '
      '$colDescription = ?, '
      '$colPriority = ?, '
      '$colDate = ? '
      'WHERE $colId = ?',
      [note.title, note.description, note.priority, note.date, note.id],
    );
  }

  // Section 8: Delete — remove one note.
  // Returns how many rows changed.
  Future<int> deleteNote(int id) async {
    Database db = await database;
    return db.rawDelete(
      'DELETE FROM $noteTable WHERE $colId = ?',
      [id],
    );
  }
}
