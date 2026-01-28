import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/screen1.dart';
import 'package:untitled3/screen2.dart';
import 'package:untitled3/screen3.dart';

class SecondScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
        (
            appBar: AppBar(title: Text("Second Screen"),),
            body: Center
              (
                child: Column
                  (
                    children:
                    [
                        ElevatedButton(onPressed: ()
                        {
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Screen1()));
                        }, child: Text("Screen 1")),

                      ElevatedButton(onPressed: ()
                      {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Screen2()));

                      }, child: Text("Screen 2")),

                      ElevatedButton(onPressed: ()
                      {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Screen3()));

                      }, child: Text("Screen 3"))
                    ],
                  ),
              ),
        );
      
    
  }
  
}