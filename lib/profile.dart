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
              title: const Text(
                'البروفايل ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Almarai',
                    fontSize: 22),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      backgroundColor: Color(0xFF161C300D),
                      child: Icon(
                        size: 25,
                        Icons.notifications_none,
                        color: Color(0xFF1E2742),
                      ),
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
                      color: const Color(0xFF1E2742),
                    ),
                    child: ListTile(
                      leading: Stack(children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                          ),
                        ),
                        Positioned.fill(
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/person.png',
                            ),
                          ),
                        )
                      ]),
                      title: Row(
                        children: [
                          const Text(
                            "أحمد عبدالله ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            size: 15,
                            Icons.verified,
                            color: Colors.blue.shade700,
                          ),
                          const Icon(
                            size: 15,
                            Icons.stars,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                      subtitle: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '@AhmedA',
                            style: TextStyle(
                              color: Color(0xFFD7D7D7),
                              fontFamily: 'Almarai',
                            ),
                            textDirection: TextDirection.ltr,
                          ),
                          Text(
                            '+90512554431',
                            style: TextStyle(
                              color: Color(0xFFD7D7D7),
                              fontFamily: 'Almarai',
                            ),
                            textDirection: TextDirection.ltr,
                          )
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/personalData');
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFFDEECF1),
                    ),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          size: 30,
                          Icons.badge_outlined,
                          color: Color(0xFF1E2742),
                        ),
                      ),
                      title: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'العضوية',
                            style: TextStyle(
                              fontFamily: 'Almarai',
                            ),
                          ),
                          Text(
                            'ذهبية',
                            style: TextStyle(
                              color: Colors.amber,
                              fontFamily: 'Almarai',
                            ),
                          )
                        ],
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            size: 15,
                            Icons.arrow_forward_ios,
                            color: Color(0xFF1E2742),
                          )),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0XFFDEECF1),
                            child: Icon(
                              Icons.badge_outlined,
                              size: 25,
                              color: Color(0xFF1E2742),
                            ),
                          ),
                          title: const Text(
                            'مسابقات و جوائز',
                            style: TextStyle(
                              fontFamily: 'Almarai',
                            ),
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                size: 15,
                                Icons.arrow_forward_ios,
                                color: Color(0xFF1E2742),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'للحصول على جوائز يومية',
                              style: TextStyle(
                                  fontFamily: 'Almarai',
                                  color: Color(0xFF0DA1CD),
                                  fontSize: 13),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF1E2742),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: const Text(
                                  'سجل دخولك اليوم ',
                                  style: TextStyle(
                                    fontFamily: 'Almarai',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  list(txt: "العناوين", icoon: Icons.location_on_outlined),
                  const SizedBox(
                    height: 5,
                  ),
                  list(
                      txt: "المحفظة",
                      icoon: Icons.account_balance_wallet_outlined),
                  const SizedBox(
                    height: 5,
                  ),
                  list(txt: "تقييمات", icoon: Icons.star_border_outlined),
                  const SizedBox(
                    height: 5,
                  ),
                  list(
                      txt: "دعوة الأصدقاء",
                      icoon: Icons.person_add_alt_outlined),
                  const SizedBox(
                    height: 5,
                  ),
                  list(
                      txt: "خدمة متابعة الحجوزات", icoon: Icons.badge_outlined),
                  const SizedBox(
                    height: 30,
                  ),
                  list(txt: "الأعدادات", icoon: Icons.settings_outlined),
                  const SizedBox(
                    height: 30,
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
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
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
          backgroundColor: const Color(0XFFDEECF1),
          child: Icon(
            icoon,
            size: 25,
            color: const Color(0xFF1E2742),
          ),
        ),
        title: Text(
          txt,
          style: const TextStyle(
            fontFamily: 'Almarai',
          ),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 15,
              Icons.arrow_forward_ios,
              color: Color(0xFF1E2742),
            )),
      ),
    );
  }
}
