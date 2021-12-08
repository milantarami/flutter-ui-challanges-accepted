import 'dart:html';

import 'package:flutter/material.dart';

class CoolButton extends StatelessWidget {
  final int bgColor;
  final int textColor;
  final String label;
  final double borderRadius;
  final BuildContext context;

  const CoolButton({
    Key? key,
    required this.context,
    required this.bgColor,
    required this.textColor,
    required this.label,
    this.borderRadius = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Color(bgColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Color(textColor),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
