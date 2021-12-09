import 'package:flutter/material.dart';

import '../config/theme.dart';

// border reference: https://stackoverflow.com/a/56488988/10525009
class FormsInput extends StatelessWidget {
  final String? placeholder;
  final Widget? suffixIcon;

  const FormsInput({
    Key? key,
    this.suffixIcon,
    this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 22,
        ),
        filled: true,
        hintText: placeholder,
        hintStyle: const TextStyle(
          color: Color(
            Login1Theme.grey2,
          ),
        ),
        fillColor: const Color(Login1Theme.grey4),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1,
            color: Color(Login1Theme.grey2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1,
            color: Color(Login1Theme.white),
          ),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
