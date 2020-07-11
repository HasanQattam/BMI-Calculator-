import 'package:bmiflutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottomButton.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Text(
              'Yor Result',
              style: titleText,
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: colorCard,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: resultTextStyle,
                  ),
                  Text(
                    '18',
                    style: bmiTextStyle,
                  ),
                  Text(
                    'Stop looking at me like that im just an app  ',
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButtom(
            bottomTextButton: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context, '/resultsPage');
            },
          ),
        ],
      ),
    );
  }
}
