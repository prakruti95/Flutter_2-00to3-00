import 'package:flutter/material.dart';
import 'model.dart';

class ProductScreen extends StatefulWidget
{
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ListExState();
}

class _ListExState extends State<ProductScreen>
{
  List product_name=
  [
    "LenovoXYZ",
    "DellABC",
    "HPtyu",
    "LenovoXYZ",
    "DellABC",
    "HPtyu",
    "LenovoXYZ",
    "DellABC",
    "HPtyu"
  ];
  List product_price=
  [
    "35000",
    "55000",
    "45000",
    "35000",
    "55000",
    "45000",
    "35000",
    "55000",
    "45000"
  ];



  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("My Custom List",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blueGrey,),
      body:
      Center
        (

          child: Column
            (
            children:
            [
              ElevatedButton(onPressed: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Model2(list: product_name,list2:product_price)));
              }, child: Text("Click"))
            ],
          )


      ),
    );
  }
}
