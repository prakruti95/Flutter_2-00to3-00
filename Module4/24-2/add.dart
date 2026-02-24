import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myjson1/view.dart';
class AddScreen extends StatefulWidget
{
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen>
{
  TextEditingController pname = TextEditingController();
  TextEditingController pprice = TextEditingController();
  TextEditingController pdes = TextEditingController();
  late String name,price,des;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Add data"),),
        body: Center
          (
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column
                (
                  children:
                  [
                      TextField(controller: pname,decoration: InputDecoration(hintText: "Enter Product Name"),),
                      SizedBox(height: 10,),
                      TextField(controller: pprice,decoration: InputDecoration(hintText: "Enter Product Price"),),
                      SizedBox(height: 10,),
                      TextField(controller: pdes,decoration: InputDecoration(hintText: "Enter Product Description"),),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {
                         name = pname.text.toString();
                         price = pprice.text.toString();
                         des = pdes.text.toString();
                         var url = "https://prakrutitech.xyz/Seminar/insert.php";
                         var resp = http.post(Uri.parse(url),body:
                         {
                           "pname":name,
                           "pprice":price,
                           "pdes":des
                         });
                         print(resp.toString());
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Added Succesfully")));
                         Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ViewScreen()));

                      }, child: Text("Add"))

                  ],
                ),
            ),
          ),
      );
  }
}
