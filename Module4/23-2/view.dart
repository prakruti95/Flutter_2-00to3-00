import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myjson1/add.dart';
import 'package:myjson1/mymodel.dart';
import 'package:http/http.dart' as http;

class ViewScreen extends StatefulWidget
{
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("View data"),),
      body: FutureBuilder
        (
          future: getdata(),
          builder: (context,snapshot)
          {
            if(snapshot.hasError)
            {
              print("1");
              print("Network not found");
            }
            if(snapshot.hasData)
            {
              print("2");
              return MyModel(list:snapshot.data);
            }

            return CircularProgressIndicator();
          }
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AddScreen()));
      },child: Icon(Icons.add),),
    );

  }
  getdata()async
  {
    var url = "https://prakrutitech.xyz/Seminar/view.php";
    var resp = await  http.get(Uri.parse(url));
    return jsonDecode(resp.body);
  }
}
