// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://i.pinimg.com/originals/fb/e8/f9/fbe8f92308efe8a97995fd42f535ac9f.png";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [  
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Asmat BATOOL"),
                accountEmail: Text("talk2asmat@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage(imageUrl), 
                  ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,

                  ),
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                ),
                title: Text(
                  "Proile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                    
                  ),
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
                ),
                title: Text(
                  "Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                    
                  ),
                ),
            ),
          ],
        ),

      ),
    );
    
  }
}