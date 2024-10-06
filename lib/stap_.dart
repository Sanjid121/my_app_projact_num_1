import 'package:flutter/material.dart';

class Stap extends StatefulWidget {
  const Stap({Key? key}) : super(key: key);

  @override
  _StapState createState() => _StapState();
}

class _StapState extends State<Stap> {
  int tep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Stap Page'),
          centerTitle: true,
        ),
        backgroundColor: Colors.white70,
        body: Container(
          child: Stepper(
            type: StepperType.horizontal,
            onStepTapped: (value) {
              setState(() {
                tep = value;
              });
            },
            onStepContinue: () {
              setState(() {
                if (tep == 2) {
                } else {
                  tep += 1;
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (tep == 1) {
                } else {
                  tep -= 1;
                }
              });
            },
            currentStep: tep,
            steps: [
              Step(
                  state: tep<=0? StepState.editing :StepState.complete,
                  isActive: tep >= 0,
                  title: Text('sad'),
                  stepStyle: StepStyle(color: Colors.green),
                  content: Container(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(labelText: 'name'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'name'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'name'),
                        ),
                      ],
                    ),
                  )),
              Step(
                 state: tep<=1? StepState.editing :StepState.complete,
                 isActive: tep >= 1,
                  title: Text('Mobile'),
                  stepStyle: StepStyle(color: Colors.blue),
                  content: Container(
                      child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Mobile'),
                      )
                    ],
                  ))),
              Step(
                 state:  StepState.complete,
                 isActive: tep >= 2,
                  title: Text('Email'),
                  stepStyle: StepStyle(color: Colors.blue),
                  content: Container(
                      child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'email'),
                      )
                    ],
                  )))
            ],
          ),
        ));
  }
}
