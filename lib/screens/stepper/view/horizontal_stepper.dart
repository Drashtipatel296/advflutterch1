import 'package:advflutterch1/utils/global_var.dart';
import 'package:flutter/material.dart';

class HorizontalStepper extends StatefulWidget {
  const HorizontalStepper({super.key});

  @override
  State<HorizontalStepper> createState() => _HorizontalStepperState();
}

class _HorizontalStepperState extends State<HorizontalStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Stepper Sample',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
            backgroundColor: Colors.white,
          ),
        ),
        child: Stepper(
          elevation: 1,
          type: StepperType.horizontal,
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
                size: 20,
              ),
            );
          },
          steps: const [
            Step(
              title: Text('Personal'),
              content: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Fist Name',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Last Name',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text('Contact'),
              content: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.home),
                      hintText: 'Address',
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Mobile No',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text('Upload'),
              content: TextField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
