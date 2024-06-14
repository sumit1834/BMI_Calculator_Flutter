import 'package:bmi_calculator_flutter/Components/constant.dart';
import 'package:bmi_calculator_flutter/Components/reuseable_card.dart';
import 'package:flutter/material.dart';
import '../Components/constant.dart';
import '../Components/reuseable_card.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colorx: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return InputPage();
                  },
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'Recalculate BMI',
                  style: kLargeButtonTextStyle,
                ),
              ),
              color: kBottomConainerColor,
              height: kBottomContainerHight,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(bottom: 20),
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
