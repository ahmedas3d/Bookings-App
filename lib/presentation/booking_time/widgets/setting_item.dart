import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const SettingItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 15,
          ), // السهم على اليسار
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: "Almarai",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(
                      0xFF020202,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  icon,
                  color: Colors.black,
                  size: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
