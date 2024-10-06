import 'package:flutter/material.dart';
import 'package:flutter_my_app/data_add.dart';
import 'package:flutter_my_app/usearmodal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataTavil extends StatefulWidget {
  const DataTavil({Key? key}) : super(key: key);

  @override
  _DataTavilState createState() => _DataTavilState();
}

Student student = Student(id: 1, name: "name", grade: "grade");

class _DataTavilState extends State<DataTavil> {
  final List<Student> student = [
    Student(id: 1, name: "Rahat Hossain", grade: "A"),
  ];
  void initState() {
    super.initState();
    _loadNames();
  }
 _saveName(String student) async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
 
    });
    await SharedPreferences.getInstance().then((prefs) {
      prefs.setStringList('names', _names);
    });
  }
  _addName() async {
    TextEditingController nameController = TextEditingController();
    TextEditingController idcontroller = TextEditingController();
    TextEditingController markcontrollet = TextEditingController();
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text('Add a Name'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Enter Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: idcontroller,
                  decoration: InputDecoration(
                    labelText: "Enter Id",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: markcontrollet,
                  decoration: InputDecoration(
                    labelText: "Enter Mark",
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'N O T  N E W',
                style: TextStyle(color: const Color.fromARGB(255, 247, 47, 1)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('S A V E'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 5, 212, 84),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                if (nameController.text.isNotEmpty) {
                  (nameController.text);
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('MARK')),
            ],
            rows: student
                .map((Student) => DataRow(cells: [
                      DataCell(Text(Student.id.toString())),
                      DataCell(Text(Student.name)),
                      DataCell(Text(Student.grade)),
                    ]))
                .toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addName();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
