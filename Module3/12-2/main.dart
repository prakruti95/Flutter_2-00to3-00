import 'package:flutter/material.dart';
import 'package:mydb2/add.dart';
import 'package:mydb2/db.dart';
import 'package:mydb2/edit.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  MyDb db = MyDb();
  List<Map> slist = [];
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    db.open();
    loadData();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Crud app"),),
        body: Center
          (
            child: Column
              (
              children:slist.map((flutter)
                  {
                    return Card
                      (
                          child: ListTile
                            (
                              leading: Icon(Icons.person),
                              title: Text(flutter["name"]),
                              subtitle:Text(flutter["email"]),
                              trailing: Wrap(children:
                              [
                                IconButton(onPressed: ()
                                {
                                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => EditData(name:flutter["name"],email:flutter["email"],pass:flutter["pass"])));

                                }, icon: Icon(Icons.edit)),
                                IconButton(onPressed: ()
                                {
                                  db.db.rawDelete("delete from tops1 where email=?",[flutter["email"]]);
                                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));
                                }, icon: Icon(Icons.delete)),
                              ],),
                            ),
                      );

                  }).toList()
              ) ,
          ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AddData()));
      },child: Icon(Icons.add),),
      );
  }

  void loadData()async
  {
      await getdata();
      setState(() {
        isLoading = false;
      });

  }

  Future<void> getdata()async
  {
    Future.delayed(Duration(milliseconds: 500),()async
    {

      slist = await db.db.rawQuery("select * from tops1");
      setState(()
      {

      });

    });

  }
}
