import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(),
        body: Center
          (
            child: Image.asset("assets/a.png",width: 200,height: 200,)
            //Text("Screen1",style: TextStyle(fontSize: 25.00),),
          ),
      );
  }
}
