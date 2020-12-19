import 'package:NIC_Asia_UI/Pages/login_page.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final Color whiteColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        children: [
          //User Acccount Header
          Container(
              height: deviceSize.height * 0.3,
              width: deviceSize.width,
              color: Colors.brown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height:10),
                  Text(
                    'Good Morning! Girija',
                    style: TextStyle(fontSize: 17, color: whiteColor),
                  ),
                  SizedBox(height: 15),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/anil.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Girija Prasad Kandel',
                    style: TextStyle(fontSize: 15, color: whiteColor),
                  ),
                ],
              )),

          //Drawer Option
          Container(
              height: deviceSize.height * 0.67,
              color: Colors.red,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.camera_alt,
                      color: whiteColor,
                    ),
                    title: Text('Quick Payment'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.supervisor_account_rounded,
                      color: whiteColor,
                    ),
                    title: Text('Favourite Account'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.article_sharp,
                      color: whiteColor,
                    ),
                    title: Text('Invoice History'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.add_comment,
                      color: whiteColor,
                    ),
                    title: Text('Complain'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.analytics,
                      color: whiteColor,
                    ),
                    title: Text('Activity Log'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: whiteColor,
                    ),
                    title: Text('Setting'),
                  ),
                  Divider(color: Colors.black),
                  ListTile(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    leading: Icon(
                      Icons.lock,
                      color: whiteColor,
                    ),
                    title: Text('LogOut'),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
