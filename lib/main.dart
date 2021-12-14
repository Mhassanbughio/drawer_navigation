import 'package:flutter/material.dart';
import 'package:drawer_navigation/settingpage.dart';

void main() {
  runApp(MaterialApp(
    title: "My app",
    home: MyDrawer(),
  ));
}

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: no_logic_in_create_state
    return _MyDrawerState();
  }
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 85,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/60064591?s=400&v=4"))),
                  ),
                  Text(
                    "Muhammad Hassan",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.home),
              onTap: null,
            ),
            ListTile(
              title: Text(
                "Setting",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => settingpage()));
              },
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.logout),
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
