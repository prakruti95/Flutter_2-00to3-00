import 'package:flutter/material.dart';

class ListEx extends StatefulWidget
{
  const ListEx({super.key});

  @override
  State<ListEx> createState() => _ListExState();
}

class _ListExState extends State<ListEx>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("My Custom List",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blueGrey,),
        body: SingleChildScrollView(
          child: Center
            (

                child: Column
                  (
                    children:
                    [
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Abcd")),

                    ],
                  ),
              ),
        ),);
  }
}
