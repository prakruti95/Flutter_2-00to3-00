//call,sms,email
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagechooserex extends StatefulWidget
{
  const Imagechooserex({super.key});

  @override
  State<Imagechooserex> createState() => _ImagechooserexState();
}

class _ImagechooserexState extends State<Imagechooserex>
{
  ImagePicker picker = ImagePicker();
  File _imageFile = File("");
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Image Chooser Example"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    ElevatedButton(
                        onPressed: ()
                        {
                              myimage();

                        }, child: Text("Image Chooser"))
                ],
              ),
          ),
      );
  }

  void myimage() async
  {
    final pickedFile =  await picker.pickImage(source: ImageSource.gallery);
    _imageFile = File(pickedFile!.path);
    print("My data is $_imageFile");
    Navigator.pushNamed(context,"/second");

  }
}
