import 'package:booking_app/presentation/booking_time/widgets/setting_item.dart';
import 'package:booking_app/presentation/booking_time/widgets/support_and_policy_widget.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'الإعدادات',
          style: TextStyle(
            fontSize: 19,
            fontFamily: "Almarai",
            fontWeight: FontWeight.w700,
            color: Color(0xFF1E2742),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward,
              size: 26,
              color: Color(0xFF1E2742),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        children: const [
          SettingItem(icon: Icons.language, title: 'language / اللغة'),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Color(0x80161C30),
          ),
          SettingItem(icon: Icons.favorite_border, title: 'المفضلة'),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Color(0x80161C30),
          ),
          SettingItem(icon: Icons.attach_money, title: 'تغيير العملة'),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Color(0x80161C30),
          ),
          SettingItem(icon: Icons.support_agent, title: 'الدعم'),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Color(0x80161C30),
          ),
          SettingItem(icon: Icons.policy, title: 'سياسة الإلغاء'),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Color(0x80161C30),
          ),
          SettingItem(icon: Icons.person_add, title: 'دعوة الأصدقاء'),

          SizedBox(
            height: 20,
          ),
          Text(
            "عام",
            textAlign: TextAlign.end,
            style: TextStyle(
              fontFamily: "Almarai",
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(
                0xBF161C30,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Divider(
            color: Color(0x80161C30),
          ),

          SettingItem(icon: Icons.report, title: 'تقديم شكوى'),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Color(0x80161C30),
          ),
          SettingItem(icon: Icons.help_outline, title: 'كيفية استخدام التطبيق'),
          SizedBox(
            height: 20,
          ),
          SettingItem(icon: Icons.logout, title: 'تسجيل خروج'),
          SizedBox(
            height: 40,
          ), // مسافة بين العناصر
          SupportAndPolicy(
            icon: Icons.support_agent,
            title: "الدعم",
          ),
          SizedBox(
            height: 8,
          ),
          SupportAndPolicy(
            icon: Icons.help_outline,
            title: "سياسة الالغاء",
          ),
        ],
      ),
    );
  }
}
