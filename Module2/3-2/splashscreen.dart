import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:newapp/loginscreen.dart';

class Splashscreen extends StatefulWidget 
{
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> 
{
  @override
  void initState() 
  {
    checkconnectivity();
    //Timer(Duration(seconds:3),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Loginscreen())));
    
  }
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        body: Center
          (
            //child: Image.asset("assets/a.png",width: 200,height: 200),
            child:Lottie.asset('assets/abcd.json'),
          ),
      );
  }

  checkconnectivity()async
  {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if(connectivityResult.contains(ConnectivityResult.mobile))
    {
      Timer(Duration(seconds:5),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Loginscreen())));
    }
    else if(connectivityResult.contains(ConnectivityResult.wifi))
    {
      Timer(Duration(seconds:5),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Loginscreen())));
    }
    else
      {
          errordialog();
      }
  }

  errordialog()
  {
    showDialog(context: context,
    builder: (context)
    {
        return AlertDialog(icon:Icon(Icons.error),title: Text("Network Error"),);
    });
  }
}
