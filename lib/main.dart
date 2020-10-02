import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=> runApp(new DrawerApp());

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS
        ?Colors.grey[50]
        :null
      ),
      home: new HomePage(
        
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Raize"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("GDG Baroda"),
              accountEmail: new Text("dhvanankotecha@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text("G"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.brown,
                child: new Text("D"),
                )
              ],
            ),
            new ListTile(
              title: new Text("Profile"),
              trailing: new Icon(Icons.local_play),
            ),
            new ListTile(
              title: new Text("Feed"),
              trailing: new Icon(Icons.rss_feed),
            ),
            new ListTile(
              title: new Text("Events"),
              trailing: new Icon(Icons.sort_by_alpha),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Feed"),
        ),
      ),
    );
  }
}