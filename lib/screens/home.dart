import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './otherpage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  String mainProfilePic =
      "https://avatars.githubusercontent.com/u/11421035?v=4";
  String otherProfilePic = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        drawer: new Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("henryckh"),
              accountEmail: Text("henry.chan.ckh@gmail.com"),
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(mainProfilePic),
                  ),
                  onTap: () => print("Current User")),

              //.. This line of code provides the usage of multiple accounts
              /* otherAccountsPictures: <Widget>[
              GestureDetector(
                onTap: ()=> switchUser(),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(otherProfilePic)
                ),
              ),
            ], */

              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://cdn.dribbble.com/users/925716/screenshots/4531553/attachments/1025680/beautiful_night.jpg?compress=1&resize=400x300")),
              ),
            ),
            ListTile(
                title: Text("Home Page"),
                trailing: Icon(Icons.menu),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => OtherPage("Home Page"),
                  ));
                }),
            ListTile(
                title: Text("About Page"),
                trailing: Icon(Icons.info),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => OtherPage("About Page"),
                  ));
                }),
            ListTile(
                title: Text("Settings Page"),
                trailing: Icon(Icons.security),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        OtherPage("Settings Page"),
                  ));
                }),
            ListTile(
                title: Text("Camera Page"),
                trailing: Icon(Icons.security),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => OtherPage("Camera Page"),
                  ));
                }),
            Divider(
              thickness: 1.0,
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        )));
  }
}
