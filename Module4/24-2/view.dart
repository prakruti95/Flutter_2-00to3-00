import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myjson1/add.dart';
import 'package:myjson1/mymodel.dart';
import 'package:http/http.dart' as http;
import 'package:myjson1/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ViewScreen extends StatefulWidget
{
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen>
{
  late SharedPreferences sharedPreferences;
  String email="";

  @override
  void initState() {
    // TODO: implement initState
    checkdata();
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("View data"),actions:
      [
        IconButton(onPressed: ()
        {
          sharedPreferences.setBool("mydata", true);
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SigninScreen()));

        }, icon: Icon(Icons.logout))
      ],),
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

  void checkdata() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      email = sharedPreferences.getString("myemail").toString();

    });
  }
}
