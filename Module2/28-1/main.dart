import 'package:flutter/material.dart';
import 'package:untitled3/first.dart';
import 'package:untitled3/second.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp
        (
          home: SecondScreen(),
          debugShowCheckedModeBanner: false,
        );
  }

}
