import 'package:flutter/material.dart';

class Model2 extends StatelessWidget
{
    var list,list2;
    Model2({required this.list,required this.list2});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder:(context,index)
        {
          return ListTile
            (
              title: Text(list[index]),
              subtitle: Text(list2[index])
          );
        }
    ));
  }
}
