import 'package:flutter/material.dart';

class SelectionDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'تفاصيل الاختيار',
          style: TextStyle(
            fontSize: 19,
            fontFamily: "Almarai",
            fontWeight: FontWeight.w700,
            color: Color(0xBF161C30),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'باقة يومية',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Almarai",
                fontWeight: FontWeight.w400,
                color: Color(0xBF161C30),
              ),
            ),
            Text(
              '250.000 ر.ي',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Almarai",
                fontWeight: FontWeight.w400,
                color: Color(0xFF1E2742),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          "من 7 صباحا الي 7 مساءا",
          style: TextStyle(
            fontSize: 11,
            fontFamily: "Almarai",
            fontWeight: FontWeight.w400,
            color: Color(0xBF161C30),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'غداء',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Almarai",
                fontWeight: FontWeight.w400,
                color: Color(0xFF1E2742),
              ),
            ),
            Text(
              '3470 ر.ي',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Almarai",
                fontWeight: FontWeight.w400,
                color: Color(0xBF161C30),
              ),
            ),
          ],
        ),
        Divider(
          color: Color(0x80161C30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'المجموع',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Almarai",
                fontWeight: FontWeight.w800,
                color: Color(0xFF1E2742),
              ),
            ),
            Text(
              '259.500 ر.ي',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Almarai",
                fontWeight: FontWeight.w800,
                color: Color(0xFF1E2742),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(125, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                backgroundColor: Color(0xFF1E2742),
              ),
              child: Text(
                'احجز الآن',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Almarai",
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(110, 40),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xFF1E2742),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                backgroundColor: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.message_outlined,
                    color: Colors.black,
                  ),
                  Text(
                    ' أرسل رسالة ',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Almarai",
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E2742),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
