import 'package:flutter/material.dart';
import 'package:mydb2/db.dart';
import 'package:mydb2/main.dart';

class EditData extends StatefulWidget
{
  var name;
  var email;
  var pass;

  EditData({required this.name,required this.email,required this.pass});


  @override
  State<EditData> createState() => _EditDataState();
}

class _EditDataState extends State<EditData>
{
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    var _formkey = GlobalKey<FormState>();
    MyDb db1 = MyDb();

    @override
  void initState()
    {
    // TODO: implement initState
      db1 = MyDb();
      db1.open();
      name.text=widget.name;
      email.text=widget.email;
      pass.text=widget.pass;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Add data"),),
        body: Form(
          key: _formkey,
          child: Center
            (
              child: Column
                (
                  children:
                  [
                      TextFormField(controller: name,decoration: InputDecoration(hintText: "Enter Name",border: OutlineInputBorder()),
                        validator: (value)
                        {
                        if(name.text.isEmpty)
                          {
                            return "Please Enter Name";
                          }
                        return null;
                      },),
                      SizedBox(height: 10,),
                      TextFormField(controller: email,decoration: InputDecoration(hintText: "Enter Email",border: OutlineInputBorder()),
                        validator: (value)
                        {
                          if(email.text.isEmpty)
                          {
                            return "Please Enter Email";
                          }
                          return null;
                        },),
                      SizedBox(height: 10,),
                      TextFormField(controller: pass,decoration: InputDecoration(hintText: "Enter Password",border: OutlineInputBorder()),
                        validator: (value)
                        {
                          if(pass.text.isEmpty)
                          {
                            return "Please Enter Password";
                          }
                          return null;
                        },),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {
                          if(_formkey.currentState!.validate())
                          {
                              String name1 = name.text.toString();
                              String email1 = email.text.toString();
                              String pass1 = pass.text.toString();

                              db1.db.rawUpdate("update tops1 set name=?,email=?,pass=? where email=?",[name1,email1,pass1,widget.email]);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Updated")));
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));
                          }
                      }, child:Text("Update"))
                  ],
                ),
            ),
        ),
      );
  }
}
