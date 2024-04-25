import 'package:advflutterch1/utils/global_var.dart';
import 'package:flutter/material.dart';

class StepperApp extends StatefulWidget {
  const StepperApp({super.key});

  @override
  State<StepperApp> createState() => _StepperAppState();
}

class _StepperAppState extends State<StepperApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor:  Colors.blue,
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ),
        ),
        child: Stepper(
          currentStep: GlobalStepperValues.firstIndex,
          onStepContinue: () {
            setState(() {
              if (GlobalStepperValues.firstIndex ==
                  GlobalStepperValues.secondIndex) {
                GlobalStepperValues.firstIndex == 2;
              } else {
                GlobalStepperValues.firstIndex++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if(GlobalStepperValues.firstIndex==2)
              {

                GlobalStepperValues.firstIndex--;
              }
              else{

                GlobalStepperValues.firstIndex=0;
              }
            });
          },
          stepIconBuilder: (stepIndex, stepState) {
            return const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 16,
              ),
            );
          },
          steps: const [
            Step(
              title: Text('Account'),
              content: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your Account number',
                ),
              ),
            ),
            Step(
              title: Text('Address'),
              content: TextField(),
            ),
            Step(
              title: Text('Mobile Number'),
              content: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your mobile number',
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(
          Icons.list,
          color: Colors.white,
        ),
      ),
    );
  }
}
