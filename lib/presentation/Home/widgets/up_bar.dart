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
    return Container(
      height: 280,
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 18,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                  size: 28,
                ),
                Spacer(),
                Text(
                  'مرحبا حسان',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'ما الذي تحاتاجه؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Almarai',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.tune),
                      hintText: 'عن ماذا تبحث ؟',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Almarai',
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0DA1CD),
                    ),
                    child: const Center(
                      child: Text(
                        'ابحث',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                Container(
                  height: 55,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(10),
                      hint: const Text(
                        'المحافظة',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      value: selectedGovernorate,
                      isExpanded: true,
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 28,
                        color: Colors.grey,
                      ),
                      items: governorates.map((String governorate) {
                        return DropdownMenuItem<String>(
                          value: governorate,
                          child: Text(
                            governorate,
                            style: const TextStyle(
                              fontFamily: 'Almarai', // تعيين الخط هنا
                              fontSize: 18,
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
