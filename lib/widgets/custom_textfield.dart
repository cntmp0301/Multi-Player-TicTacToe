import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFC6A2F5),
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: ConstColor.bgColor,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
