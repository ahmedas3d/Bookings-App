import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 6,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF1E2742),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/chalet.png'),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'اسم الشاليه',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_border,
                                  )),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.stars,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Text(
                                ' (123 تقييم) ',
                                style: TextStyle(
                                  color: Color(0xFF828F9C),
                                  fontSize: 12,
                                  fontFamily: 'Almarai',
                                ),
                              ),
                              Text('4.77'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.grey.shade600,
                                size: 18,
                              ),
                              const Text(
                                ' صنعاء مذبح الشارع العام',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.beach_access_outlined,
                                color: Color(0xFF0DA1CD),
                                size: 18,
                              ),
                              Text(
                                'شاطئ خاص',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.pool_outlined,
                                color: Color(0xFF0DA1CD),
                                size: 18,
                              ),
                              Text(
                                'حمام سباحة',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.coffee_outlined,
                                color: Color(0xFF0DA1CD),
                                size: 18,
                              ),
                              Text(
                                'فطور مجاني',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
