import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 290,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffECF3F5),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'اسم الشاليه',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'مذبح الشارع العام صنعاء',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.grey,
                        fontFamily: 'Almarai',
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    '4.0',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 5),
                  ...List.generate(
                    5,
                    (index) {
                      return Icon(
                        index < 4 ? Icons.star : Icons.star_border,
                        color: const Color(0xff0DA1CD),
                        size: 24,
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                ' 210 تقييم ',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  color: Colors.grey,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'شاليه سياحي للإيجار اليومي أو بالساعة، يوفر لك أجواء استرخاء وتجهيزات كاملة لقضاء أوقات مميزة',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'لوريم إيبسوم هو نص مؤقت يستخدم في التصميم والنشر لإظهار شكل الوثيقة أو الخط دون الاعتماد على محتوى معنوي. قد يستخدم لوريم إيبسوم كنص بديل قبل وضع النص ',
                style: TextStyle(
                  fontFamily: 'Almarai',
                ),
                textDirection: TextDirection.rtl,
              )
            ],
          ),
        ),
      ),
    );
  }
}
