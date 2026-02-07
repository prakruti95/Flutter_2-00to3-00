import 'package:flutter/material.dart';

class Mydata extends StatefulWidget {
  const Mydata({super.key});

  @override
  State<Mydata> createState() => _MydataState();
}

class _MydataState extends State<Mydata> {


  @override
  Widget build(BuildContext context)
  {
    var width  = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold
      (
        appBar: AppBar(title: Text("Width : $width and Height : $height"),),
        body: Container
          (
            color: Colors.blueGrey,
            width: width/3,
            height:height/3,
          ),
      );
  }
}
