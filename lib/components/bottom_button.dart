import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.onPressed, required this.buttonTitle});
  final VoidCallback onPressed;
  final String buttonTitle;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(buttonTitle,
              style: kLargeButtonTextStle),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: kBottomContainerColor,
        ),
      ),
    );
  }
}