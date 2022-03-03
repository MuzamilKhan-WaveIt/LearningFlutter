import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text("engineer.muzamilkhan@gmail.com",
                    style: TextStyle(color: Colors.white)),
                accountName: Text("Muzamil Khan",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 16)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media-exp1.licdn.com/dms/image/C4D03AQHBm0_ezrm29g/profile-displayphoto-shrink_200_200/0/1644046206583?e=1650499200&v=beta&t=pZYeZ5y7T9qoSAowQH-UNY8glnNkjbJgOZ5oUHbt4NI"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle, color: Colors.white),
              title: Text("Profile", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.white),
              title: Text("Email Us", style: TextStyle(color: Colors.white)),
            ),
          ],
        ));
  }
}
