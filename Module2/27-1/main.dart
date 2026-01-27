import 'package:flutter/material.dart';

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
          home: Scaffold
            (
              appBar: AppBar(title: Text("Tops Tech"),backgroundColor: Colors.blueGrey,),
              body: SingleChildScrollView(
                child: Center
                  (
                    child: Column(
                      children:
                      [
                        Text("Aayush",style: TextStyle(fontSize: 20.00,color: Colors.blue,fontWeight: FontWeight.bold,backgroundColor: Colors.black),),
                        SizedBox(height: 10,),
                        Text("Dhaval",style: TextStyle(fontSize: 20.00,color: Colors.blue,fontWeight: FontWeight.bold,backgroundColor: Colors.black),),
                        SizedBox(height: 10,),
                        Text("Hetvi",style: TextStyle(fontSize: 20.00,color: Colors.blue,fontWeight: FontWeight.bold,backgroundColor: Colors.black),),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: ()
                        {
                          print("Clicked");
                
                        }, child: Text("Submit")),
                        
                        Image.network("https://static.vecteezy.com/system/resources/thumbnails/058/144/254/small/beautiful-flowers-wallpaper-image-of-flowers-free-photo.jpg",width: 200,height: 200,),
                        Image.network("https://static.vecteezy.com/system/resources/thumbnails/058/144/254/small/beautiful-flowers-wallpaper-image-of-flowers-free-photo.jpg",width: 200,height: 200,),
                        Image.network("https://static.vecteezy.com/system/resources/thumbnails/058/144/254/small/beautiful-flowers-wallpaper-image-of-flowers-free-photo.jpg",width: 200,height: 200,)
                
                      ],
                    ),
                
                
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
        );
  }

}
