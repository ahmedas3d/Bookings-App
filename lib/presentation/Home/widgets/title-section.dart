import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        textAlign: TextAlign.right,
        text,
        style: const TextStyle(
          fontSize: 22,
          fontFamily: 'Almarai',
        ),
      ),
    );
  }
}
