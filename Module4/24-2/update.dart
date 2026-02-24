import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myjson1/view.dart';
class UpdateScreen extends StatefulWidget
{
  var id,pname,pprice,pdes;

  UpdateScreen({required this.id,required this.pname,required this.pprice,required this.pdes});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen>
{
  TextEditingController pname = TextEditingController();
  TextEditingController pprice = TextEditingController();
  TextEditingController pdes = TextEditingController();
  late String name,price,des;

  @override
  void initState() {
    // TODO: implement initState
    pname.text = widget.pname;
    pprice.text = widget.pprice;
    pdes.text = widget.pdes;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Update data"),),
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
                var url = "https://prakrutitech.xyz/Seminar/update.php";
                var resp = http.post(Uri.parse(url),body:
                {
                  "id":widget.id,
                  "pname":name,
                  "pprice":price,
                  "pdes":des
                });
                print(resp.toString());
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Upadated Succesfully")));
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ViewScreen()));

              }, child: Text("Update"))

            ],
          ),
        ),
      ),
    );
  }
}
