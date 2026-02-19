import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model.dart';
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
                  return Model(list:snapshot.data);
                }

                return CircularProgressIndicator();
            }
          ),
      );
  }

  getdata()async
  {
    var url = "https://simplifiedcoding.net/demos/marvel/";
    var resp = await  http.get(Uri.parse(url));
    return jsonDecode(resp.body);
  }
}
