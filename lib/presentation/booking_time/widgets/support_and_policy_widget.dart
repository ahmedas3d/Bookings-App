import 'package:flutter/material.dart';

class SupportAndPolicy extends StatelessWidget {
  final IconData icon;
  final String title;

  const SupportAndPolicy({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xB2F4F4F5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 16,
            ),
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              fontFamily: "Almarai",
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(
                0xFF1E2742,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 25,
            ),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.blue[50],
              child: Icon(
                icon,
                color: const Color(0xFF1E2742),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
