import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border), // Corrected icon widget usage
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share), // Corrected icon widget usage
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            onTap?.call(); // Correctly call the onTap callback
          },
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
