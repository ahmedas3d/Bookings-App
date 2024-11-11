import 'package:flutter/material.dart';

class TermsSection extends StatelessWidget {
  const TermsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'يمنع دخول الحيونات منعاً باتاً',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: MediaQuery.of(context).size.width < 400 ? 14 : 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.do_not_disturb_alt,
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 330, // عرض مخصص
                child: Text(
                  'يمنع إحضار الشيشة أو المداعة إلى داخل القاعة',
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: MediaQuery.of(context).size.width < 400 ? 14 : 18,
                    color: Colors.grey,
                  ),
                  softWrap: true, // النص سينتقل إلى السطر التالي
                  textDirection: TextDirection.rtl,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.do_not_disturb_alt,
                color: Colors.grey,
              )
            ],
          ),
        ],
      ),
    );
  }
}
