import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            height: 3,
          ),
          Text(
            'لوريم إيبسوم هو نص مؤقت يستخدم في التصميم',
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: MediaQuery.of(context).size.width < 400 ? 14 : 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'حمام سباحة',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: MediaQuery.of(context).size.width < 400 ? 14 : 18,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Icon(
                Icons.pool,
                color: Colors.grey[700],
              ),
              const Spacer(),
              Text(
                'طاقم عمل 25 شخص',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: MediaQuery.of(context).size.width < 400 ? 14 : 18,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Icon(
                Icons.people_alt,
                color: Colors.grey[700],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'اطلالة خلابة',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: MediaQuery.of(context).size.width < 400 ? 14 : 18,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Icon(
                Icons.landscape,
                color: Colors.grey[700],
              ),
              const Spacer(),
              Text(
                'فطور مجاني',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: MediaQuery.of(context).size.width < 400 ? 14 : 18,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Icon(
                Icons.fastfood_outlined,
                color: Colors.grey[700],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 14,
                color: Colors.blue,
              ),
              Text(
                'عرض المزيد',
                style: TextStyle(
                  fontFamily: 'Almarai',
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
