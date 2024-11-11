import 'package:booking_app/confirm_page.dart';
import 'package:booking_app/presentation/Home/pages/home_page.dart';
import 'package:booking_app/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _activeIndex = 0;

  // قائمة الصفحات التي تتوافق مع كل زر في BottomNavBar
  final List<Widget> _pages = [
    const HomePage(),
    const ConfirmPage(),
    const Center(
        child: Text('Chat Page', style: TextStyle(color: Colors.black))),
    const Center(
        child: Text('Home Page', style: TextStyle(color: Colors.black))),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _activeIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        height: 65,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                _activeIndex == 4 ? Icons.person : Icons.person_outline,
                color: _activeIndex == 4 ? Colors.black : Colors.grey,
                size: 30,
              ),
              onPressed: () => _onItemTapped(4),
            ),
            IconButton(
              icon: Icon(
                _activeIndex == 3 ? Icons.favorite : Icons.favorite_border,
                color: _activeIndex == 3 ? Colors.black : Colors.grey,
                size: 30,
              ),
              onPressed: () => _onItemTapped(3),
            ),
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: _activeIndex == 2 ? Colors.black : Colors.white,
                shape: BoxShape.circle,
                border: const Border.symmetric(
                  horizontal: BorderSide(width: 1.5, color: Colors.grey),
                  vertical: BorderSide(width: 1.5, color: Colors.grey),
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.calendar_month_outlined,
                  color: _activeIndex == 2 ? Colors.white : Colors.grey,
                  size: 30,
                ),
                onPressed: () => _onItemTapped(2),
              ),
            ),
            IconButton(
              icon: Icon(
                _activeIndex == 1 ? Icons.chat : Icons.chat_outlined,
                color: _activeIndex == 1 ? Colors.black : Colors.grey,
                size: 30,
              ),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: Icon(
                Icons.home_filled,
                color: _activeIndex == 0 ? Colors.black : Colors.grey,
                size: 30,
              ),
              onPressed: () => _onItemTapped(0),
            ),
          ],
        ),
      ),
    );
  }
}
