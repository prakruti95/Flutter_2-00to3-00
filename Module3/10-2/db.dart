import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class MyDb
{

  late Database db;

  Future open() async
  {
    var dbpath = await getDatabasesPath();//
    print("tops: $dbpath");
    String path = join(dbpath,'mybatch.db');
    print("tops2: $path");

    // db = await openDatabase(path,
    //   onCreate:(Database db,int version)async
    //   {
    //     await db.execute
    //       (
    //       '''CREATE TABLE IF NOT EXISTS tops1(
    //       name varchar(255) not null,
    //       email varchar(255) not null,
    //       password varchar(255) not null
    //       );''');
    //
    //     print("Table Created");
    //  });


    db = await openDatabase(path,version: 1,
        onCreate:(Database db,int version)async
        {
          await db.execute(
              ''' CREATE TABLE IF NOT EXISTS tops1( 
                          name varchar(255) not null,
                          email varchar(255) not null,
                          pass varchar(255) not null
                      );'''
          );
        });

  }

}