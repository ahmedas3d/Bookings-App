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
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
              )),
          title: Text(
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
                  child: Icon(
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
                    decoration: BoxDecoration(
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
                        icon: CircleAvatar(
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
                    Text(
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
                Text(
                  '@AhmedA',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almarai',
                  ),
                  textDirection: TextDirection.ltr,
                ),
                Row(
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
                Row(
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
                SizedBox(
                  height: 30,
                ),
                TextForm(
                  txt: 'الاسم',
                  icoon: Icons.cancel_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                TextForm(
                  txt: 'رقم الهاتف',
                  icoon: Icons.cancel_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                TextForm(
                  txt: 'تاريخ الميلاد',
                  icoon: Icons.calendar_month_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                TextForm(
                  txt: 'الجنس',
                  icoon: Icons.keyboard_arrow_down,
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0DA1CD),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      minimumSize: const Size(200, 50)),
                  child: Text(
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
      style: TextStyle(
        fontFamily: 'Almarai',
      ),
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        labelText: txt,
        border: OutlineInputBorder(),
        suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              icoon,
              color: Colors.grey,
            )),
      ),
    );
  }
}
