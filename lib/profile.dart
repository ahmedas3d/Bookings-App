import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text('البروفايل ',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 22),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Color(0xFF161C300D),
                      child: Icon(size: 25, Icons.notifications_none, color: Color(0xFF1E2742),),
                    )),
              ],
            ),
            body: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1E2742),
                    ),
                    child: ListTile(
                      leading: Stack(children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                          ),
                        ),
                        Positioned.fill(
                          child: ClipOval(
                            child: Image.asset('assets/person.png',),
                          ),
                        )
                      ]),
                      title: Row(
                        children: [
                          Text("أحمد عبدالله ",
                            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Icon(size: 15, Icons.verified, color: Colors.blue.shade700,),
                          Icon(size: 15, Icons.stars, color: Colors.amber,),
                        ],),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('@AhmedA',
                            style: TextStyle(color: Color(0xFFD7D7D7)),
                            textDirection: TextDirection.ltr,
                          ),
                          Text('+90512554431',
                            style: TextStyle(color: Color(0xFFD7D7D7)),
                            textDirection: TextDirection.ltr,
                          )
                        ],),
                      trailing:IconButton(
                          onPressed: () {},
                          icon:Icon(Icons.edit, color: Colors.white,),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFDEECF1),
                    ),
                    child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(size: 30, Icons.badge_outlined, color: Color(0xFF1E2742),),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('العضوية',),
                            Text('ذهبية',
                              style: TextStyle(color: Colors.amber),
                            )
                          ],),
                        trailing:IconButton(
                            onPressed: () {},
                            icon: Icon(size: 15, Icons.arrow_forward_ios, color: Color(0xFF1E2742),)
                        ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Color(0XFFDEECF1),
                              child: Icon(Icons.badge_outlined, size: 25, color: Color(0xFF1E2742),),
                            ),
                            title: Text('مسابقات و جوائز'),
                            trailing:  IconButton(
                                onPressed: () {},
                                icon: Icon(size: 15, Icons.arrow_forward_ios, color: Color(0xFF1E2742),)
                            ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('للحصول على جوائز يومية',
                              style: TextStyle(color: Color(0xFF0DA1CD),fontSize: 13),
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF1E2742),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Text('سجل دخولك اليوم ',
                                style: TextStyle(color: Colors.white, fontSize: 15,),
                              ),
                            ),
                          ],)
                      ],),
                  ),
                  SizedBox(height: 15,),
                  list(txt: "العناوين", icoon: Icons.location_on_outlined),
                  SizedBox(height: 5,),
                  list(txt: "المحفظة", icoon: Icons.account_balance_wallet_outlined),
                  SizedBox(height: 5,),
                  list(txt: "تقييمات", icoon: Icons.star_border_outlined),
                  SizedBox(height: 5,),
                  list(txt: "دعوة الأصدقاء", icoon: Icons.person_add_alt_outlined),
                  SizedBox(height: 5,),
                  list(txt: "خدمة متابعة الحجوزات", icoon: Icons.badge_outlined),
                  SizedBox(height: 30,),
                  list(txt: "الأعدادات", icoon: Icons.settings_outlined),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0DA1CD),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        minimumSize: const Size(200, 50)),
                    child: Text('التسجيل كمقدم خدمة ',
                      style: TextStyle(color: Colors.white, fontSize: 17,),
                    ),
                  ),
                ],),
            ))));
  }
}

class list extends StatelessWidget {
  final IconData icoon;
  final String txt;

  list({super.key, required this.txt, required this.icoon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
      ),
      child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0XFFDEECF1),
            child: Icon(icoon, size: 25, color: Color(0xFF1E2742),),
          ),
          title: Text(txt),
          trailing:
          IconButton(
              onPressed: () {},
              icon: Icon(size: 15, Icons.arrow_forward_ios, color: Color(0xFF1E2742),)
          ),
      ),
    );
  }
}
