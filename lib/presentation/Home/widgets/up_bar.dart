import 'package:flutter/material.dart';

class UpBar extends StatefulWidget {
  const UpBar({super.key});

  @override
  State<UpBar> createState() => _UpBarState();
}

class _UpBarState extends State<UpBar> {
  String? selectedGovernorate;

  final List<String> governorates = [
    'القاهرة',
    'الإسكندرية',
    'الجيزة',
    'الأقصر',
    'أسوان',
    'سوهاج',
  ];

  @override
  Widget build(BuildContext context) {
    // الحصول على العرض والارتفاع الحاليين للشاشة
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.36, // تعيين الارتفاع كنسبة من ارتفاع الشاشة
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/1.jpeg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black54,
            BlendMode.darken,
          ),
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05, // نسبة من العرض للشاشة
          vertical: screenHeight * 0.04, // نسبة من ارتفاع الشاشة
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                  size: screenWidth * 0.07, // الحجم حسب العرض
                ),
                const Spacer(),
                Text(
                  'مرحبا حسان',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.06, // الخط كنسبة من العرض
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              'ما الذي تحاتاجه؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: screenWidth * 0.05,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              height: screenHeight * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.tune, size: screenWidth * 0.06),
                      hintText: 'عن ماذا تبحث ؟',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Almarai',
                        fontSize: screenWidth * 0.045,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/bookingScreen');
                  },
                  child: Container(
                    height: screenHeight * 0.06,
                    width: screenWidth * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff0DA1CD),
                    ),
                    child: Center(
                      child: Text(
                        'ابحث',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: screenWidth * 0.05,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.06,
                ),
                Container(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.39,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(10),
                      hint: Text(
                        'المحافظة',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: screenWidth * 0.045,
                          color: Colors.grey,
                        ),
                      ),
                      value: selectedGovernorate,
                      isExpanded: true,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: screenWidth * 0.06,
                        color: Colors.grey,
                      ),
                      items: governorates.map((String governorate) {
                        return DropdownMenuItem<String>(
                          value: governorate,
                          child: Text(
                            governorate,
                            style: TextStyle(
                              fontFamily: 'Almarai',
                              fontSize: screenWidth * 0.045,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedGovernorate = newValue;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
