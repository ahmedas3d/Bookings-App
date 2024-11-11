import 'package:flutter/material.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
              )),
          title: const Text(
            'البيانات الشخصية',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 22,
              fontFamily: 'Almarai',
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: 103,
                    width: 103,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                  Positioned.fill(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/person.png',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: IconButton(
                        onPressed: () {},
                        icon: const CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.add_photo_alternate_outlined,
                              color: Colors.grey,
                            ))),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "أحمد عبدالله ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Almarai',
                      ),
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.blue.shade700,
                    ),
                  ],
                ),
                const Text(
                  '@AhmedA',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almarai',
                  ),
                  textDirection: TextDirection.ltr,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('رقم الحساب: ',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Almarai',
                        )),
                    Text('2345567',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Almarai',
                        ))
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('إنشاء الحساب: ',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Almarai',
                        )),
                    Text('15 مايو 2024',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Almarai',
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextForm(
                  txt: 'أحمد عبدلله',
                  icoon: Icons.cancel_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextForm(
                  txt: '844403415500536',
                  icoon: Icons.cancel_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextForm(
                  txt: '15/12/2002',
                  icoon: Icons.calendar_month_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextForm(
                  txt: 'ذكر',
                  icoon: Icons.keyboard_arrow_down,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0DA1CD),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      minimumSize: const Size(200, 50)),
                  child: const Text(
                    'التسجيل كمقدم خدمة ',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Almarai',
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final IconData icoon;
  final String txt;
  TextForm({super.key, required this.txt, required this.icoon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        labelText: txt,
        labelStyle: const TextStyle(
          fontFamily: 'Almarai',
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            icoon,
            color: Colors.grey,
          ),
        ),
      ),
      enabled: false, // منع الكتابة
    );
  }
}
