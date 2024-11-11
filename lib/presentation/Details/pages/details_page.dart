import 'package:booking_app/presentation/Details/widgets/booking_section.dart';
import 'package:booking_app/presentation/Details/widgets/card_details.dart';
import 'package:booking_app/presentation/Details/widgets/choose_packages.dart';
import 'package:booking_app/presentation/Details/widgets/feedback.dart';
import 'package:booking_app/presentation/Details/widgets/maps_section.dart';
import 'package:booking_app/presentation/Details/widgets/services_section.dart';
import 'package:booking_app/presentation/Details/widgets/set_properties.dart';
import 'package:booking_app/presentation/Details/widgets/terms_section.dart';
import 'package:booking_app/presentation/Details/widgets/title_section.dart';
import 'package:booking_app/presentation/Details/widgets/view_images.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ViewImages(),
            const SizedBox(height: 30),
            const CardDetails(),
            const SizedBox(height: 15),
            const TitleSectionDetails(title: 'الخدمات المتوفرة'),
            const SizedBox(height: 5),
            const ServicesSection(),
            const SizedBox(height: 30),
            const TitleSectionDetails(title: 'العنوان'),
            const SizedBox(height: 10),
            const MapsSection(),
            const SizedBox(height: 30),
            const TitleSectionDetails(title: 'اختر باقتك'),
            const SizedBox(height: 10),
            const ChoosePackages(),
            const SizedBox(height: 15),
            SetProperties(
              title: 'ماذا تحتاج في القاعة؟',
              items: [
                MenuItem(icon: Icons.pool, text: 'مسبح'),
                MenuItem(icon: Icons.sports_tennis, text: 'تنس طاولة'),
                MenuItem(icon: Icons.fitness_center, text: 'جيم'),
                MenuItem(icon: Icons.headphones, text: 'سماعات بلوتوث'),
                MenuItem(icon: Icons.mic, text: 'بلياردو'),
                MenuItem(icon: Icons.outdoor_grill, text: 'شواية باربيكو'),
              ],
            ),
            const SizedBox(height: 30),
            const TitleSectionDetails(title: 'العربون'),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    '5,000 ريال',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'مبلغ العربون لايرجع مطلقاً',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      const Text(
                        'سياسة القاعة : ',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const TitleSectionDetails(title: 'الشروط و السياسات'),
            const SizedBox(height: 10),
            const TermsSection(),
            const FeedbackSection(),
            const SizedBox(height: 20),
            const BookingSection(),
          ],
        ),
      ),
    );
  }
}
