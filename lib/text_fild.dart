import 'package:flutter/material.dart';

class TextFild extends StatefulWidget {
  const TextFild({ Key? key }) : super(key: key);

  @override
  _TextFildState createState() => _TextFildState();
}

class _TextFildState extends State<TextFild> {
   final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Validation method
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    // Simple email pattern
    final emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  
    if (!RegExp(emailPattern).hasMatch(value)) {  
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      
      String email = _emailController.text;
      String password = _passwordController.text;
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Logging in as $email')),
      );
    }
  }

  bool isPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  return _validateEmail(value);
                }, // Call the validation method
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPass = !isPass;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye_rounded))),
                obscureText: isPass,
                validator: _validatePassword, // Call the validation method
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: _submitForm, // Submit the form when pressed
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}