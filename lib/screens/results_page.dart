import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "YOUR RESULT",
                  style: kTitleTextStyle,textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Normal',style: kResultTextStyle,textAlign: TextAlign.center,),
                  Text('19.23', style: kBMITextStyle,textAlign: TextAlign.center,),
                  Text('Your bmi is quite low', style: kResultBodyStyle,textAlign: TextAlign.center,)
                ],
                  ),
              ),),
            BottomButton(buttonTitle: 'RE-CALCULATE', onTap: (){
              Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
