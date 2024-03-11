import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

class CustomButton extends StatelessWidget {
  // VoidCallback = Function() but does not return anything(void)
  final VoidCallback onTap;
  final String text;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: ConstColor.buttonColor,
            blurRadius: 3,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: ConstColor.buttonColor,
          minimumSize: Size(width, 50),
          shadowColor: const Color(0xFFC397F5),
        ),
        child: Text(
          text,
          style: const TextStyle(color: ConstColor.bgColor, fontSize: 16),
        ),
      ),
    );
  }
}
