import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myjson1/signup.dart';
import 'package:myjson1/view.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SigninScreen extends StatefulWidget
{
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen>
{

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  late String myemail,mypass;
  late SharedPreferences sharedPreferences;
  var newuser;
  @override
  void initState()
  {
    checklogin();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Login here"),),
      body: Center
        (
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column
            (
            children:
            [
              TextField(controller: email,decoration: InputDecoration(hintText: "Enter Email"),),
              SizedBox(height: 10,),
              TextField(controller: pass,decoration: InputDecoration(hintText: "Enter Password"),obscureText: true,),
              SizedBox(height: 10,),

              ElevatedButton(onPressed: ()async
              {
                myemail = email.text.toString();
                mypass = pass.text.toString();

                var url = "https://prakrutitech.xyz/Seminar/signin.php";
                var resp = await http.post(Uri.parse(url),body:
                {
                  "e1":myemail,
                  "p1":mypass,

                });
                var data = json.decode(resp.body);
                if(data==0)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Fail")));

                  }
                else
                  {
                    sharedPreferences.setString("myemail",myemail);
                    sharedPreferences.setBool("mydata", false);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ViewScreen()));

                  }
                //print(resp.toString());


              }, child: Text("Login")),

              TextButton(onPressed: ()
              {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SignupScreen()));

              }, child: Text("Do you want to signup?"))

            ],
          ),
        ),
      ),
    );
  }

  void checklogin() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    newuser = sharedPreferences.getBool("mydata")??true;
    if(newuser==false)
    {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ViewScreen()));

    }

  }
}
