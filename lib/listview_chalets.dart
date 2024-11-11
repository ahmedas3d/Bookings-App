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
                      flex: 1,
                      child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF1E2742),
                          ),
                          child: Image.asset(
                            'assets/images/chalet.png',
                            fit: BoxFit.fill,
                          )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'اسم الشاليه',
                                style: TextStyle(
                                    color: Color(0xFF1E2742),
                                    fontSize: 20,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.stars,
                                color: Colors.yellow,
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
                              Icon(Icons.location_on_outlined,
                                  color: Colors.grey.shade600),
                              Text(
                                ' صنعاء مذبح الشارع العام',
                                style: TextStyle(
                                  color: Color(0xFF828F9C),
                                  fontFamily: 'Almarai',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.beach_access_outlined,
                                color: Color(0xFF0DA1CD),
                              ),
                              Text(
                                'شاطئ خاص',
                                style: TextStyle(
                                  color: Color(0xFF0DA1CD),
                                  fontFamily: 'Almarai',
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.pool_outlined,
                                color: Color(0xFF0DA1CD),
                              ),
                              Text(
                                'حمام سباحة',
                                style: TextStyle(
                                  color: Color(0xFF0DA1CD),
                                  fontFamily: 'Almarai',
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.coffee_outlined,
                                color: Color(0xFF0DA1CD),
                              ),
                              Text(
                                'فطور مجاني',
                                style: TextStyle(
                                  color: Color(0xFF0DA1CD),
                                  fontFamily: 'Almarai',
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
