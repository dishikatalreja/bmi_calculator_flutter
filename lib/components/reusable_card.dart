import 'package:flutter/material.dart';
class Reusable_card extends StatelessWidget {

  Reusable_card({required this.colour, required this.cardChild,this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),

    );
  }
}