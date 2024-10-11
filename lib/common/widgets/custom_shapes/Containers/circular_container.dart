import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  final double? width, height;
  final double radius, padding;
  final Widget? child;
  final Color backgroundColor;

  const TCircularContainer(
      {super.key,
        this.child,
        this.height = 400,
        this.width = 400,
        this.radius = 400,
        this.padding = 0,
        this.backgroundColor = TColors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor
      ),
    );
  }
}