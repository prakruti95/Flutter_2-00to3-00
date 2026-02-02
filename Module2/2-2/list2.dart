import 'package:flutter/material.dart';

class ListEx2 extends StatefulWidget
{
  const ListEx2({super.key});

  @override
  State<ListEx2> createState() => _ListExState();
}

class _ListExState extends State<ListEx2>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("My Custom List",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blueGrey,),
        body:
          Center
            (
               child: ListView
                 (
                    children:
                    [
                      ListTile(leading:Image.network("https://static.vecteezy.com/system/resources/thumbnails/058/144/254/small/beautiful-flowers-wallpaper-image-of-flowers-free-photo.jpg",width:50 ,height:50 ,),title: Text("Hetvi"),subtitle: Text("Xyz"),trailing: Icon(Icons.delete),),
                      ListTile(title: Text("Ridhita"),),
                      ListTile(title: Text("Dhaval"),),
                      ListTile(title: Text("Aayush"),),
                      ListTile(title: Text("Hetvi"),),
                      ListTile(title: Text("Ridhita"),),
                      ListTile(title: Text("Dhaval"),),
                      ListTile(title: Text("Aayush"),),
                      ListTile(title: Text("Hetvi"),),
                      ListTile(title: Text("Ridhita"),),
                      ListTile(title: Text("Dhaval"),),
                      ListTile(title: Text("Aayush"),),
                      ListTile(title: Text("Hetvi"),),
                      ListTile(title: Text("Ridhita"),),
                      ListTile(title: Text("Dhaval"),),
                      ListTile(title: Text("Aayush"),),
                    ],
                 ),


            ),
        );
  }
}
