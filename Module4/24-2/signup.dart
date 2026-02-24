import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myjson1/signin.dart';
import 'package:myjson1/view.dart';
class SignupScreen extends StatefulWidget
{
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
{
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  late String myname,mysurname,myemail,mypass;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Signup data"),),
      body: Center
        (
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column
            (
            children:
            [
              TextField(controller: name,decoration: InputDecoration(hintText: "Enter Name"),),
              SizedBox(height: 10,),
              TextField(controller: surname,decoration: InputDecoration(hintText: "Enter Surname"),),
              SizedBox(height: 10,),
              TextField(controller: email,decoration: InputDecoration(hintText: "Enter Email"),),
              SizedBox(height: 10,),
              TextField(controller: pass,decoration: InputDecoration(hintText: "Enter Password"),obscureText: true,),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: ()
              {
                myname = name.text.toString();
                mysurname = surname.text.toString();
                myemail = email.text.toString();
                mypass = pass.text.toString();

                var url = "https://prakrutitech.xyz/Seminar/signup.php";
                var resp = http.post(Uri.parse(url),body:
                {
                  "name":myname,
                  "surname":mysurname,
                  "email":myemail,
                  "password":mypass
                });
                print(resp.toString());
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Signup Succesfully")));
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SigninScreen()));

              }, child: Text("Signup")),
              TextButton(onPressed: ()
              {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SigninScreen()));
              }, child: Text("Login?"))


            ],
          ),
        ),
      ),
    );
  }
}
