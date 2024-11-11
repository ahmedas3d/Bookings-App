import 'package:booking_app/models/categories_model.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<CategoriesModel> category = [
    CategoriesModel(
      imagePath: 'assets/images/image1.png',
      title: 'المزارع',
      subTitle: '8 مزارع تجميل في مدينتك',
    ),
    CategoriesModel(
      imagePath: 'assets/images/image2.png',
      title: 'خبراء التجميل',
      subTitle: '11 مركز تجميل في مدينتك',
    ),
    CategoriesModel(
      imagePath: 'assets/images/image3.png',
      title: 'DJ - الموسيقى',
      subTitle: '11 دي جي تجميل في مدينتك',
    ),
    CategoriesModel(
      imagePath: 'assets/images/image4.png',
      title: 'الشاليهات',
      subTitle: '55 شاليه تجميل في مدينتك',
    ),
    CategoriesModel(
      imagePath: 'assets/images/image5.png',
      title: 'الفنادق',
      subTitle: '42 فندق تجميل في مدينتك',
    ),
    CategoriesModel(
      imagePath: 'assets/images/image6.png',
      title: 'باقات التصوير',
      subTitle: '17 مصور تجميل في مدينتك',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 120, // Set a fixed height for the list
        child: ListView.builder(
          scrollDirection: Axis.horizontal, // Set to horizontal scrolling
          itemCount: category.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (category[index].title == 'الشاليهات') {
                  Navigator.pushNamed(context, '/chalets');
                } else {
                  print('Arrow tapped');
                }
              },
              child: Container(
                width: 180,
                margin: const EdgeInsets.only(
                    right: 10), // Add spacing between items
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(category[index].imagePath),
                    fit: BoxFit
                        .cover, // Ensures the image covers the entire container
                    colorFilter: const ColorFilter.mode(
                      Colors.black54,
                      BlendMode.darken,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5, // A bit of spread for a softer shadow
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0, // Slightly adjust position
                      right: 0,
                      child: Container(
                        height: 50,
                        width: 160,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomRight: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                category[index].title,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                  fontFamily: 'Almarai',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                category[index].subTitle,
                                textDirection: TextDirection.rtl,
                                style: const TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
