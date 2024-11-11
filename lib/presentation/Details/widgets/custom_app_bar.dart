import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: toggleFavorite,
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share),
        ),
        Spacer(),
        GestureDetector(
          onTap: widget.onTap,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
