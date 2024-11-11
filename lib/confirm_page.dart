import 'package:booking_app/presentation/Home/widgets/list_categories.dart';
import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSizeTitle = screenWidth * 0.07; // Adjust based on screen width
    final fontSizeSubtitle = screenWidth * 0.045;
    final buttonFontSize = screenWidth * 0.05;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/success.png',
                width: screenWidth * 0.5, // Adjust width based on screen size
              ),
              SizedBox(
                height: screenWidth * 0.03,
              ),
              Text(
                'تم تأكيد الحجز',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: screenWidth * 0.03,
              ),
              Text(
                'يمكنك تغيير او الغاء الحجز بكل سهولة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: fontSizeSubtitle,
                ),
              ),
              SizedBox(
                height: screenWidth * 0.06,
              ),
              Text(
                'هل تحتاج خدمات اخرى؟',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: fontSizeSubtitle,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: screenWidth * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'الخدمات المقترحة مع حجزك',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: fontSizeTitle * 0.8,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenWidth * 0.05,
              ),
              const ListCategories(),
              SizedBox(
                height: screenWidth * 0.03,
              ),
              const ListCategories(),
              SizedBox(
                height: screenWidth * 0.06,
              ),
              GestureDetector(
                onTap: () {
                  // Navigate back to the main page
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 3, color: const Color(0xff1E2742)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'العودة للصفحة الرئيسية',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: buttonFontSize,
                          color: const Color(0xff1E2742),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
