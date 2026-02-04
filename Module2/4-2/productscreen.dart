import 'package:flutter/material.dart';
import 'package:newapp/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'model.dart';

class ProductScreen extends StatefulWidget
{
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ListExState();
}

class _ListExState extends State<ProductScreen>
{
  late SharedPreferences sharedPreferences;
  String email="";




  List product_name=
  [
    "LenovoXYZ",
    "DellABC",
    "HPtyu",
    "LenovoXYZ",
    "DellABC",
    "HPtyu",
    "LenovoXYZ",
    "DellABC",
    "HPtyu"
  ];
  List product_price=
  [
    "35000",
    "55000",
    "45000",
    "35000",
    "55000",
    "45000",
    "35000",
    "55000",
    "45000"
  ];

  @override
  void initState() {

    checkdata();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Welcome : $email",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blueGrey,actions:
      [
        IconButton(onPressed: ()
        {
          sharedPreferences.setBool("mydata", true);
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Loginscreen()));

        }, icon: Icon(Icons.logout))

      ],),
      body:
      Center
        (

          child: Column
            (
            children:
            [
              ElevatedButton(onPressed: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Model2(list: product_name,list2:product_price)));
              }, child: Text("Click"))
            ],
          )


      ),
    );
  }

  void checkdata() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      email = sharedPreferences.getString("myemail").toString();

    });
  }
}
