import 'package:flutter/material.dart';
import 'package:flutter_my_app/Register.dart';
import 'package:flutter_my_app/org.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //login validation
  usarLogin() async {
    SharedPreferences ss = await SharedPreferences.getInstance();
    if (usernameController.text == "" || passwordController.text == "") {
      print("empty");
    } else {
      String email = ss.getString('username')!;
      String password = ss.getString('password')!;

      if (email == usernameController.text &&
          password == passwordController.text) {
        ss.setString('login', 'true');
        Navigator.push(context, MaterialPageRoute(builder: (_) => Org()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text('Please Enter Correct Email and Password'),
          ),
        );
      }
    }
  }

  void initState() {
    Future.delayed(Duration(microseconds: 1), () async {
      SharedPreferences ss = await SharedPreferences.getInstance();
      if (ss.getString('login') != null) {
        if (ss.getString('login') == 'true') {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Org()));
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurpleAccent,
            Colors.pinkAccent,
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Colors.deepPurpleAccent,
                          Colors.indigo,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      )),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              autofocus: true,
                              keyboardType: TextInputType.emailAddress,
                              controller: usernameController,
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                iconColor: Colors.red,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                labelText: 'Email ',
                                labelStyle: TextStyle(color: Colors.white),
                                suffixText: '@gmail.com',
                                suffixStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  icon: Icon(Icons.lock),
                                  iconColor: Colors.red,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.white),
                                  suffixIcon: IconButton(
                                      color: Colors.white,
                                      icon: Icon(Icons.remove_red_eye),
                                      onPressed: () {})),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: double.maxFinite,
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 2,
                                backgroundColor:
                                    Color.fromARGB(255, 89, 189, 243),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                usarLogin();
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 60,
                            width: double.maxFinite,
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 2,
                                backgroundColor:
                                    Color.fromARGB(255, 185, 244, 253),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Register(),
                                  ),
                                );
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
