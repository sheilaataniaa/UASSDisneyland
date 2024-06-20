import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;
import 'cartmodel.dart';

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }

    _db = await initDatabase();
    return _db;
  }

  Future<Database?> initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'cart.db');
    var db = await openDatabase(path, version: 3, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE cart (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      productId VARCHAR UNIQUE,
      productName TEXT,
      initialPrice INTEGER,
      productPrice INTEGER,
      quantity INTEGER,
      unitTag TEXT,
      image TEXT,
      category INTEGER
    )
  ''');
  }

  Future<Cart> insert(Cart cart) async {
    var dbClient = await db;
    if (dbClient != null) {
      await dbClient.insert('cart', cart.toMap());
      return cart;
    } else {
      // Tangani kesalahan ketika dbClient adalah null
      throw Exception("Database is null");
    }
  }

  Future<void> createCartTable() async {
    var dbClient = await db;
    if (dbClient != null) {
      await dbClient.execute('CREATE TABLE cart (id INTEGER PRIMARY KEY AUTOINCREMENT, productId VARCHAR UNIQUE, productName TEXT, initialPrice INTEGER, productPrice INTEGER, quantity INTEGER, unitTag TEXT, image TEXT, category INTEGER)');
      _db = null; // Reset the cached database reference
    } else {
      throw Exception("Database is null");
    }
  }

   Future<void> deleteCartTable() async {
    var dbClient = await db;
    if (dbClient != null) {
      await dbClient.execute('DROP TABLE IF EXISTS cart');
      _db = null; // Reset the cached database reference
    } else {
      throw Exception("Database is null");
    }
  }


  Future<List<Cart>> getCartList() async {
    var dbClient = await db;
    if (dbClient != null) {
      final List<Map<String, Object?>> queryResult =
          await dbClient.query('cart');
      return queryResult.map((e) => Cart.fromMap(e)).toList();
    } else {
      // Tangani kasus ketika dbClient adalah null
      // Kembalikan daftar kosong jika DBHelper null
      return [];
    }
  }

Future<List<Cart>> getCartListShu() async {
    var dbClient = await db;
    if (dbClient != null) {
      final List<Map<String, Object?>> queryResult =
          await dbClient.query('cart', where: 'category = 1');
      return queryResult.map((e) => Cart.fromMap(e)).toList();
    } else {
      // Tangani kasus ketika dbClient adalah null
      // Kembalikan daftar kosong jika DBHelper null
      return [];
    }
  }

  Future<List<Cart>> getCartListOcean() async {
    var dbClient = await db;
    if (dbClient != null) {
      final List<Map<String, Object?>> queryResult =
          await dbClient.query('cart', where: 'category = 2');
      return queryResult.map((e) => Cart.fromMap(e)).toList();
    } else {
      // Tangani kasus ketika dbClient adalah null
      // Kembalikan daftar kosong jika DBHelper null
      return [];
    }
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    if (dbClient != null) {
      return await dbClient.delete('cart', where: 'id = ?', whereArgs: [id]);
    } else {
      // Tangani kesalahan ketika dbClient adalah null
      throw Exception("Database is null");
    }
  }

  Future<int> updateQuantity(Cart cart) async {
    var dbClient = await db;
    if (dbClient != null) {
      return await dbClient
          .update('cart', cart.toMap(), where: 'id = ?', whereArgs: [cart.id]);
    } else {
      // Tangani kesalahan ketika dbClient adalah null
      throw Exception("Database is null");
    }
  }

  Future<int> deleteAll() async {
    var dbClient = await db;
    if (dbClient != null) {
      return await dbClient.delete('cart');
    } else {
      // Tangani kesalahan ketika dbClient adalah null
      throw Exception("Database is null");
    }
  }
}

