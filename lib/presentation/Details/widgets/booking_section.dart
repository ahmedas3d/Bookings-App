import 'package:flutter/material.dart';

class BookingSection extends StatelessWidget {
  const BookingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 285,
      decoration: const BoxDecoration(color: Color(0xffF8F8F8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'تفاصيل الاختيار',
                style: const TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '250.000  ر.ي',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 18,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  Spacer(),
                  Text(
                    'باقة يومية',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'من 7 صباحا  إلى 7 مساءا',
                style: TextStyle(
                  fontFamily: 'Almarai',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ' 5000 ر.ي',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 18,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  Spacer(),
                  Text(
                    'غداء',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
                height: 1,
                endIndent: 10,
                indent: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '255.000  ر.ي',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 18,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  Spacer(),
                  Text(
                    'المجموع',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      /////////////
                    },
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1E2742),
                      ),
                      child: const Center(
                        child: Text(
                          'احجز الان',
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      /////////////
                    },
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xff1E2742)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat_outlined,
                            color: Color(0xff1E2742),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'أرسل رسالة',
                            style: TextStyle(
                              fontFamily: 'Almarai',
                              fontSize: 18,
                              color: Color(0xff1E2742),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
