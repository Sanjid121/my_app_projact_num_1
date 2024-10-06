import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentForm(),
    );
  }
}

class StudentForm extends StatefulWidget {
  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final _formKey = GlobalKey<FormState>();
  final _studentId = TextEditingController();
  final _studentName = TextEditingController();
  final _studentGrade = TextEditingController();

  @override
  submet() async {
    SharedPreferences ss = await SharedPreferences.getInstance();
    _studentId.text == "" ||
        _studentName.text == "" ||
        _studentGrade.text == "";
        
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'ID'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an ID';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Mark'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a mark';
                    }
                    return null;
                  },

                  keyboardType: TextInputType.number, // Ensure numerical input
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Here you can handle the submission, e.g., send data to a server or save it locally
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                'Processing Data: ID=$_studentId, Name=$_studentName, Mark=$_studentGrade')),
                      );
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
