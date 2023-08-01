import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myStepper extends StatefulWidget {
  const myStepper({Key? key}) : super(key: key);

  @override
  State<myStepper> createState() => _myStepperState();
}

class _myStepperState extends State<myStepper> {

  int currentStep = 0;
  int lastStep = 0;

  @override
  Widget build(BuildContext context) {

    lastStep =  getSteps().length-1;

    return Container(
      child:

      Theme(

        data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: Colors.lightGreen)),
        child: Stepper(
          // type: StepperType.horizontal,
          steps: getSteps(),
          currentStep: currentStep,
          onStepContinue: (){
            setState(() {
              if(currentStep<getSteps().length-1)
                currentStep++;
            });
          },
          onStepCancel: (){
            setState(() {
              if (currentStep>=1)
                currentStep--;
            });
          },

          controlsBuilder: ( context, details ){

            return Row(
              children: [
                TextButton(onPressed: details.onStepContinue, child: (lastStep == currentStep)?Text('Confirm'):Text('Next')),
                if (currentStep !=0 )TextButton(onPressed:  details.onStepCancel, child: Text('Cancel')),
              ],
            );
          },

          /*
          onStepTapped: (step) => setState(() {
            currentStep = step;
          }) ,
           */


        ),
      ),
    );


  }


  List<Step> getSteps() =>[
    Step(
      state: currentStep >0 ? StepState.complete: StepState.indexed,
      isActive: currentStep>=0,
      title: Text('Үзлэгийн карт'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(color: Colors.lightGreen,width: 400, height: 200,),
        ],
      ),


    ),
    Step(
      state: currentStep >1 ? StepState.complete: StepState.indexed,
      isActive: currentStep>=1,
      title: Text('Урьдчилан сэргийлэх асуумж'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(color: Colors.purpleAccent,width: 400, height: 200,),
        ],
      ),

    ),
    Step(
      state: currentStep >2 ? StepState.complete: StepState.indexed,
      isActive: currentStep>=2,
      title: Text('Биерийн ерөнхий байдлын талаарх асуумэ'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(color: Colors.amber,width: 400, height: 200,),
        ],
      ),

    ),
  ];




}
