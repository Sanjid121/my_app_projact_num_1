import 'package:flutter/material.dart';
import 'package:flutter_my_app/login_page.dart';
import 'package:flutter_my_app/stap_.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Manu extends StatefulWidget {
  const Manu({Key? key}) : super(key: key);

  @override
  _ManuState createState() => _ManuState();
}

class _ManuState extends State<Manu> {
  logout() async {
    SharedPreferences ss = await SharedPreferences.getInstance();
    ss.setString("login", "false");
    Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/15352968/pexels-photo-15352968/free-photo-of-a-lamp-with-circles-on-it-in-a-bedroom.jpeg?auto=compress&cs=tinysrgb&w=400'),
                  fit: BoxFit.fill)),
          child: Text(''),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text('Stepper'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Stap()));
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          onTap: () {
            logout();
          },
        ),
      ],
    ));
  }
}
