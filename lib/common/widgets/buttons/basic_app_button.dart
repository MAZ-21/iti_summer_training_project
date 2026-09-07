import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final double? height;
  final FontWeight fontWeight;
  const BasicAppButton({
    super.key,
    required this.text,
    required this.onPress,
    required this.fontWeight,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height ?? 92),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            fontWeight: fontWeight,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
