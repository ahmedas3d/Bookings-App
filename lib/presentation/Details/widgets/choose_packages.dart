import 'package:flutter/material.dart';

class ChoosePackages extends StatelessWidget {
  const ChoosePackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // الحاوية الأولى
          Container(
            height: 160,
            width: 340,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: const Color(0xff0DA1CD),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Color(0xff0DA1CD),
                        size: 35,
                      ),
                      Spacer(),
                      Text(
                        'الأشهر',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 20,
                          color: Color(0xff0DA1CD),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'يومية',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '250.000  ر.ي',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              // الحاوية الرئيسية لعرض التفاصيل
              Container(
                width: 340,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff0DA1CD), width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    DetailRow(
                      text: 'من 9 صباحًا حتى 12 مساءً',
                    ),
                    DetailRow(
                      text: 'دخلة خاصة للعروسة',
                    ),
                    DetailRow(
                      text: 'خصم على ليلة بالفندق للعريس والعروسة',
                    ),
                  ],
                ),
              ),
              // الحاوية الصغيرة لعنوان "تفاصيل الباقة"
              Positioned(
                top: -15,
                left: 80,
                right: 80,
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff0DA1CD), width: 1),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'تفاصيل الباقة',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String text;
  const DetailRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'Almarai',
              fontSize: 16,
            ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.check,
          ),
        ],
      ),
    );
  }
}
