import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  String label;

  CustomTextField({required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 13,
          fontFamily: "Almarai",
          fontWeight: FontWeight.w300,
          color: Color(0xFF1E2742),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.clear_outlined,
            size: 20,
            color: Color(0xFF1E2742),
          ),
          onPressed: () {
            controller.clear();
          },
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF1E2742),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF1E2742),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        contentPadding: EdgeInsets.only(top: 4, right: 17, bottom: 4),
      ),
    );
  }
}
