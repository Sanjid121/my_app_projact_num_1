import 'package:flutter/material.dart';
import 'package:flutter_my_app/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Org extends StatefulWidget {
  const Org({ Key? key }) : super(key: key);

  @override
  _OrgState createState() => _OrgState();
}

class _OrgState extends State<Org> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome'),
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('Logout'),
            onPressed: () async {
              SharedPreferences sb = await SharedPreferences.getInstance();
              sb.setString('login', 'false');
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => LoginPage()));
            },
          ),
        
        ),
      ),
      
    );
  }
}