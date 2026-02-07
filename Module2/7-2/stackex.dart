import 'package:flutter/material.dart';

class StackEx extends StatefulWidget {
  const StackEx({super.key});

  @override
  State<StackEx> createState() => _StackExState();
}

class _StackExState extends State<StackEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center
          (
            child: Column
              (
                children:
                [
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        color: Colors.green,
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.blue,
                      ),
                    ],
                  )
                ],
              ),
          ),
      );
  }
}
