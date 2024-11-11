import 'package:booking_app/chalets.dart';
import 'package:booking_app/confirm_page.dart';
import 'package:booking_app/personal_data.dart';
import 'package:booking_app/presentation/Details/pages/details_page.dart';
import 'package:booking_app/presentation/Home/widgets/bottom_nav_bar.dart';
import 'package:booking_app/presentation/booking_time/screens/booking_screen.dart';
import 'package:booking_app/presentation/booking_time/screens/settings_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Starting route
      routes: {
        '/': (context) => const BottomNavBar(), // Initial screen
        '/detailsPage': (context) => const DetailsPage(), // Route to navigate
        '/chalets': (context) => const Chalets(), // Route to navigate
        '/personalData': (context) => const PersonalData(), // Route to navigate
        '/confirmPage': (context) => const ConfirmPage(), // Route to navigate
        '/bookingScreen': (context) =>
            const BookingScreen(), // Route to navigate
        '/settingsScreen': (context) =>
            const SettingsScreen(), // Route to navigate
      },
    );
  }
}
