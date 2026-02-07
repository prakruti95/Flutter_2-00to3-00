import 'package:flutter/material.dart';
import 'package:test123/stackex.dart';
import 'login_screen.dart';
import 'mediaex.dart';

void main()
{
  runApp(MaterialApp(home:LoginScreen()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center
          (
              child: Row
                (
                  children:
                  [
                    // Container(color: Colors.blue, height: 100, width: 100),
                    // Container(color: Colors.blue, height: 100, width: 100),
                    // Expanded(child: Container(color: Colors.amber, width: 100)),
                    // Container(color: Colors.blue, height: 100, width: 100),
                    Expanded(child: Container(color: Colors.amber, height: 100)),
                    Container(color: Colors.blue, height: 100, width: 50),
                    Expanded(child: Container(color: Colors.amber, height: 100)),
                  ],
                ),
          ),
      );
  }
}

