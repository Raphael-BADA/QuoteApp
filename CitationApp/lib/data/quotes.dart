// ignore_for_file: non_constant_identifier_names

import 'package:path/path.dart';

class Quote {
  int id;
  String author;
  bool is_favorite;
  String quote;
  String category;

  Quote({
    required this.id,
    required this.quote,
    required this.is_favorite,
    required this.author,
    required this.category,
  });

  // static Future<Database> database() async {
  //   final database = openDatabase(
  //     join(await getDatabasesPath(), 'quotes_database.db'),
  //     onCreate: (db, version) {
  //       return db.execute(
  //         'CREATE TABLE quotes(id INTEGER PRIMARY KEY, quote TEXT,author TEXT, category TEXT,is_favorite BOOLEAN)',
  //       );
  //     },
  //     version: 1,
  //   );

  //   return database;
  // }

  // static Future<void> insert(Quote Quote) async {
  //   final db = await database();

  //   await db.insert(
  //     'favorites',
  //     Quote.toMap(),
  //     conflictAlgorithm: ConflictAlgorithm.replace,
  //   );
  // }

  // static Future<List<Quote>> getQuotes() async {
  //   final db = await database();

  //   final List<Map<String, dynamic>> maps = await db.query('quotes');

  //   return List.generate(maps.length, (i) {
  //     return Quote(
  //       id: maps[i]['id'],
  //       author: maps[i]['author'],
  //       category: maps[i]['category'],
  //       is_favorite: maps[i]['is_favorite'],
  //       quote: maps[i]['quote'],
  //     );
  //   });
  // }

  // static Future<void> update(Quote Quote) async {
  //   final db = await database();

  //   await db.update(
  //     'quotes',
  //     Quote.toMap(),
  //     where: 'id = ?',
  //     whereArgs: [Quote.id],
  //   );
  // }

  // static Future<void> delete(int id) async {
  //   final db = await database();

  //   await db.delete(
  //     'quotes',
  //     where: 'id = ?',
  //     whereArgs: [id],
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'quote': quote,
  //     'author': author,
  //     'category': category,
  //     'is_favorite': is_favorite,
  //   };
  // }
}
