import 'package:flutter/material.dart';
import 'package:newapp/splashscreen.dart';

import 'bottomnav.dart';
import 'drawer.dart';
import 'home.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      );
  }
}
