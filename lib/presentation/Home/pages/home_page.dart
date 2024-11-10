import 'package:booking_app/presentation/Home/widgets/categories.dart';
import 'package:booking_app/presentation/Home/widgets/custom_card.dart';
import 'package:booking_app/presentation/Home/widgets/list_categories.dart';
import 'package:booking_app/presentation/Home/widgets/title-section.dart';
import 'package:booking_app/presentation/Home/widgets/up_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            UpBar(),
            SizedBox(height: 18),
            TitleSection(text: 'عروض خاصة'),
            SizedBox(height: 18),
            CustomCard(),
            SizedBox(height: 25),
            TitleSection(text: '!كل ما تحتاجه لدينا'),
            SizedBox(height: 18),
            Categories(),
            SizedBox(height: 25),
            TitleSection(text: 'الأ على تقييما'),
            SizedBox(height: 18),
            ListCategories(),
            SizedBox(
              height: 10,
            ),
            ListCategories(),
            SizedBox(
              height: 10,
            ),
            ListCategories(),
            SizedBox(
              height: 10,
            ),
            ListCategories(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
