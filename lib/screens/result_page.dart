import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this. interpretation, required this.bmiResult, required this.resultText });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator'),),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
              style: kTitleTextStyle),
            ),
            ),
            Expanded(
              flex: 5,
              child: Reusable_card(
                colour: kActiveCardColor,
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        resultText.toUpperCase(),
                    style: kResultTextStyle),
                    Text(bmiResult,
                    style: kBMITextStyle),
                    Text(interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,)
                  ],
                ), onPress: null ,),
            ),
            BottomButton(onPressed: (){
              Navigator.pop(context);
            }, buttonTitle: 'RE-CALCULATE')
          ],
      )
    );
  }
}
