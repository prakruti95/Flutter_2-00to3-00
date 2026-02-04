import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/productscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginscreen extends StatefulWidget
{
  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<Loginscreen>
{
  TextEditingController myemail = TextEditingController();
  TextEditingController mypass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  late SharedPreferences sharedPreferences;
  var newuser;
  @override
  void initState()
  {
    check1();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("My Form",style:TextStyle(color: Colors.white),),backgroundColor: Colors.blueGrey,),
      body:Form
        (
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(48.0),
            child: Center
              (
              child: Column
                (
                children:
                [
                  TextFormField(controller:myemail,decoration: InputDecoration(hintText: "Enter Email",border: OutlineInputBorder()),validator:(value)
                  {
                    if(myemail.text.toString().isEmpty)
                    {
                      return "Please Enter Email";
                    }
                  },),
                  SizedBox(height: 10,),
                  TextFormField(controller:mypass,decoration: InputDecoration(hintText: "Enter Password",border: OutlineInputBorder()),obscureText: true,
                    validator: (value)
                    {
                      if(mypass.text.toString().isEmpty)
                      {
                        return "Please Enter Password";
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed: ()
                  {
                    String email = myemail.text.toString();
                    String pass = mypass.text.toString();
                    if(_formkey.currentState!.validate())
                    {
                      if(email=="a@gmail.com" && pass=="1234")
                      {
                        sharedPreferences.setString("myemail",email);
                        sharedPreferences.setBool("mydata", false);
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ProductScreen()));
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));

                      }
                      else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Fail")));

                      }
                    }

                  }, child: Text("Login",style: TextStyle(fontSize: 20.00),))
                ],
              ),
            ),
          )
      ),
    );
  }

  void check1() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    newuser = sharedPreferences.getBool("mydata")??true;
    if(newuser==false)
    {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ProductScreen()));

    }

  }

}
