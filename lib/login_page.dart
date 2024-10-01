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
  final _fromkey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _validation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    if (!RegExp(emailPattern).hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _passvalidation(String? value) {
    if (value == null || value.isEmpty) {
      return "please entet your password";
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  usarLogin() async {
    SharedPreferences ss = await SharedPreferences.getInstance();
    if (_usernameController.text == "" || _passwordController.text == "") {
      _fromkey.currentState!.validate();
    } else {
      if (ss.getString('email') != null) {
        // print('sanjid');
        String email = ss.getString('email')!;
        String password = ss.getString('password')!;

        if (email == _usernameController.text &&
            password == _passwordController.text) {
          ss.setString('login', "true");
          Navigator.push(context, MaterialPageRoute(builder: (_) => Org()));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('incarect pasword ')));
        }
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
                            child: Form(
                                key: _fromkey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: _usernameController,
                                      decoration: InputDecoration(
                                          icon: Icon(Icons.man_3_rounded,
                                              size: 25, color: Colors.red),
                                          labelText: 'Email ',
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                          suffixText: '@gmail.com',
                                          suffixStyle:
                                              TextStyle(color: Colors.white),
                                          border: OutlineInputBorder()),
                                      validator: _validation,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                          icon: Icon(Icons.lock,
                                              size: 25, color: Colors.red),
                                          labelText: 'Pasword',
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                          border: OutlineInputBorder()),
                                      validator: _passvalidation,
                                    ),
                                  ],
                                )),
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
