import 'package:booking_app/listview_chalets.dart';
import 'package:flutter/material.dart';

class Chalets extends StatelessWidget {
  const Chalets({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize:
                  const Size.fromHeight(70.0), // Set custom height here

              child: AppBar(
                backgroundColor: Colors.transparent,
                flexibleSpace: Image.asset(
                  'assets/images/bg_chalet.png',
                  fit: BoxFit.cover,
                ),
                leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      color: Color(0xFF1E2742),
                    )),
                title: const Text(
                  'شاليهات ',
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
                      icon: const Icon(
                        Icons.notifications_none,
                        color: Color(0xFF1E2742),
                      )),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: Colors.blue,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.tune,
                              color: Color(0xFF1E2742),
                            )),
                        hintText: 'ابحث هنا',
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Almarai',
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ScrollRow(txt: 'بحمام سباحة'),
                        ScrollRow(txt: 'عائلية'),
                        ScrollRow(txt: 'شبايبة'),
                        ScrollRow(txt: 'شاطئ'),
                        ScrollRow(txt: 'أعياد ميلاد'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "الأعلى تقييما! ",
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const listview()
                ],
              ),
            )));
  }
}

//widget scrollHorizontal
class ScrollRow extends StatelessWidget {
  final String txt;

  ScrollRow({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          txt,
          style: const TextStyle(
            fontFamily: 'Almarai',
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
