import 'package:booking_app/presentation/Home/widgets/list_categories.dart';
import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/success.png'),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'تم تأكيد الحجز',
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'يمكنك تغيير او الغاء الحجز بكل سهولة',
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'هل تحتاج خدمات اخرى؟',
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'الخدمات المقترحة مع حجزك',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 22,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListCategories(),
            const SizedBox(
              height: 10,
            ),
            const ListCategories(),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                /////////////
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 3, color: const Color(0xff1E2742)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'العودة للصفحة الرئيسية',
                      style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 18,
                          color: Color(0xff1E2742),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
