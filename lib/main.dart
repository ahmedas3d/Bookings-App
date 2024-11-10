import 'package:booking_app/presentation/Details/pages/details_page.dart';
import 'package:booking_app/presentation/Home/widgets/bottom_nav_bar.dart';
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
      },
    );
  }
}
