

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myjson1/update.dart';
import 'package:myjson1/view.dart';
class MyModel extends StatelessWidget
{
  var list;
  MyModel({required this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
        itemCount: list.length,
        itemBuilder: (context,index)
        {
          return ListTile
            (
              title: Column(children:
              [
                Text(list[index]["pname"],style: TextStyle(fontWeight:FontWeight.bold),),
                Text(list[index]["pprice"]),
                Text(list[index]["pdes"]),
              ],),
            trailing: Wrap(children:
            [
              IconButton(onPressed: ()
              {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => UpdateScreen(id:list[index]["id"],pname:list[index]["pname"],pprice:list[index]["pprice"],pdes:list[index]["pdes"])));
              }, icon: Icon(Icons.edit)),
              IconButton(onPressed: ()
              {
                var url = "https://prakrutitech.xyz/Seminar/delete.php";
                http.post(Uri.parse(url),body:
                {
                  "id":list[index]["id"]
                });
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ViewScreen()));

              }, icon: Icon(Icons.delete))

            ],),

          );
        }
    );
  }
}
