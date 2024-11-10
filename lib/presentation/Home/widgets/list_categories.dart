import 'package:booking_app/models/list_category_model.dart';
import 'package:flutter/material.dart';

class ListCategories extends StatefulWidget {
  const ListCategories({super.key});

  @override
  _ListCategoriesState createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {
  bool isFavorite = false;
  final List<ListCategoryModel> listcategory = [
    ListCategoryModel(
      image: 'assets/images/list1.png',
      title: 'قاعة الف ليلة و ليلة',
      rating: '4.99',
    ),
    ListCategoryModel(
      image: 'assets/images/list1.png',
      title: 'قاعة اللؤلؤة',
      rating: '4.89',
    ),
    ListCategoryModel(
      image: 'assets/images/list2.png',
      title: 'الممتاز للتصوير',
      rating: '4.77',
    ),
    ListCategoryModel(
      image: 'assets/images/list3.png',
      title: 'فندق الماسة',
      rating: '4.45',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detailsPage');
            },
            child: Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, 4),
                    blurRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(-4, 0),
                    blurRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(4, 0),
                    blurRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, -4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'قاعة الف ليلة وليلة',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.93',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 3),
                              Text(
                                '(111 تقييم)',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(width: 2),
                              Icon(
                                Icons.circle,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'صنعاء مذبح الشارع العام',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                              Icon(
                                Icons.location_on_outlined,
                                size: 18,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '500 فرد',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.people_alt_outlined,
                                size: 18,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'دي جي',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.music_note_outlined,
                                size: 18,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'طعام فاخر',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.local_dining,
                                size: 18,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 110,
                    width: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/list1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
