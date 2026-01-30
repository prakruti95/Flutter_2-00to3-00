import 'package:flutter/material.dart';
import 'package:untitled3/radiobuttonex.dart';

import 'checkboxex.dart';

class Uicontrols extends StatefulWidget
{
  const Uicontrols({super.key});

  @override
  State<Uicontrols> createState() => _UicontrolsState();
}

class _UicontrolsState extends State<Uicontrols>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar:AppBar(title: Text("Ui Controls"),) ,
        body: Row
          (
              children:
              [
                SizedBox(width: 15,),
                ElevatedButton(onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => CheckboxEx()));
                }, child: Text("Checkbox")),
                SizedBox(width: 15,),
                ElevatedButton(onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => RadioEx()));

                }, child: Text("RadioButton")),
                SizedBox(width: 15,),
                ElevatedButton(onPressed: ()
                {
                  showDialog(context: context, builder: (BuildContext context) 
                  {
                      return AlertDialog
                        (
                          title: Text("Welcome to tops"),
                        actions:
                        [
                          TextButton(onPressed: ()
                          {

                          }, child: Text("OK"))
                        ],
                        );
                  });

                }, child: Text("AlertDialog")),
                SizedBox(width: 15,),
                ElevatedButton(onPressed: ()
                {

                }, child: Text("Dropdown")),

              ],
          ) ,
      );
  }
}
