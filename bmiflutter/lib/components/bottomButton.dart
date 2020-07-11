import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButtom extends StatelessWidget {
  BottomButtom({@required this.onTap, @required this.bottomTextButton});
  final Function onTap;
  final String bottomTextButton;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottomTextButton,
            style: largButton,
          ),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 15),
        width: double.infinity,
        height: bottomContainerHight,
      ),
    );
  }
}
