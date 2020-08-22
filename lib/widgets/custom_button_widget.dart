import 'package:musick/core/const.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final double size;
  final Widget child;
  final String image;
  final double borderWidth;

  CustomButtonWidget({
    @required this.child,
    @required this.size,
    this.image,
    this.borderWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(200),
      ),
      border: Border.all(
        width: borderWidth,
        color: AppColors.mainColor,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.lightBlueAccent.withAlpha(5),
          blurRadius: 10,
          offset: Offset(5, 5),
          spreadRadius: 3,
        ),
        BoxShadow(
          color: Colors.lightBlue.withAlpha(4),
          blurRadius: 5,
          offset: Offset(-4, -4),
          spreadRadius: 3,
        ),
      ],
      gradient: RadialGradient(
        colors: [
          AppColors.mainColor,
          AppColors.mainColor,
          AppColors.mainColor,
          Colors.lightBlue,
        ],
      ),
    );
    return Container(
      width: 50,
      height: 50,
      decoration: boxDecoration,
      child: child,
    );
  }
}
