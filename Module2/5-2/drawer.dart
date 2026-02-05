import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyNavigationDrawer extends StatefulWidget
{
  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer> createState() => _MyNavigationDrawerState();
}

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("My Data"),),
        body: Center(),
        drawer: Drawer
          (
            child: ListView
              (
                children:
                [
                  UserAccountsDrawerHeader(accountName: Text("Tops Tech"), accountEmail: Text("tops@gmail.com")),
                  
                  ListTile(leading: Icon(Icons.camera),title: Text("Camera"),onTap:()
                  {

                  },),
                  ListTile(leading: Icon(Icons.call),title: Text("Call"),onTap: ()
                  {
                    placecall("9988998899");
                  },),
                  ListTile(leading: Icon(Icons.sms),title: Text("Sms")),
                  ListTile(leading: Icon(Icons.email),title: Text("Email")),
                ],
              ),
          ),
      );
  }

  placecall(String num)
  {
    final Uri launchUri = Uri(scheme: 'tel', path: num);
    launchUrl(launchUri);
    // if (await canLaunchUrl(launchUri)) {
    // await
    // }
    // else
    // {
    //   // Handle cases where the device cannot make calls (e.g., a tablet without a SIM)
    //   throw 'Could not launch $launchUri';
    // }
  }
}
