import 'package:flutter/material.dart';
import 'package:flutter_my_app/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _fromkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passController = TextEditingController();

  @override
  String? _validatio(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    if (!RegExp(emailPattern).hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _passvalidatio(String? value) {
    if (value == null || value.isEmpty) {
      return "please entet your password";
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  registear() async {
    SharedPreferences ss = await SharedPreferences.getInstance();
    if (_nameController.text == "" || _passController.text == "") {
      _fromkey.currentState!.validate();
    } else {
      ss.setString('email', _nameController.text);
      ss.setString('password', _passController.text);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepPurpleAccent,
              Colors.pinkAccent,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.pinkAccent,
                        Colors.deepPurpleAccent,
                      ])),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              'Registar',
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
                                      controller: _nameController,
                                      decoration: InputDecoration(
                                          icon: Icon(Icons.email,
                                              size: 25, color: Colors.white),
                                          labelText: 'Email ',
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                          suffixText: '@gmail.com',
                                          suffixStyle:
                                              TextStyle(color: Colors.white),
                                          border: OutlineInputBorder()),
                                      validator: _validatio,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: _passController,
                                      decoration: InputDecoration(
                                          icon: Icon(Icons.lock,
                                              size: 25, color: Colors.white),
                                          labelText: 'Pasword',
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                          border: OutlineInputBorder()),
                                      validator: _passvalidatio,
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
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    width: 4,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                registear();
                              },
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
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
