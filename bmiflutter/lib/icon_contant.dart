import 'package:flutter/material.dart';
import 'constants.dart';

class CardContainer extends StatelessWidget {
  CardContainer({@required this.icon, @required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15.1),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
