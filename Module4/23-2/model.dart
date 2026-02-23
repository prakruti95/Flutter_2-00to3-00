import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myjson1/view.dart';
class Model extends StatelessWidget
{
  var list;
  Model({required this.list});

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
                leading: Image.network(list[index]["imageurl"]),
                title: Text(list[index]["name"]),
                subtitle:Column(children:
                [
                  Text(list[index]["realname"]),
                  Text(list[index]["team"]),
                  Text(list[index]["firstappearance"]),
                ],
                ),

              );
        }
      );
  }
}
