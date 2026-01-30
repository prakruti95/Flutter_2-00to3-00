import 'package:flutter/material.dart';

class RadioEx extends StatefulWidget
{
  const RadioEx({super.key});

  @override
  State<RadioEx> createState() => _RadioExState();
}
enum gender{male,female}
class _RadioExState extends State<RadioEx>
{

  gender _gender = gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(),
        body: Column
          (
            children:
            [
                RadioListTile(title:Text("Male"),value:gender.male,groupValue: _gender,
                    onChanged:(value)
                {
                  setState(() {
                    _gender=value!;


                  });
                }),

              RadioListTile(title:Text("Female"),value:gender.female, groupValue: _gender,
                  onChanged:(value)
                  {
                    setState(() {
                              _gender=value!;

                    });
                  })
            ],
          ),
      );
  }
}
