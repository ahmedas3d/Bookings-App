import 'package:booking_app/models/banner_model.dart';
import 'package:booking_app/presentation/Details/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ViewImages extends StatefulWidget {
  ViewImages({super.key});

  @override
  State<ViewImages> createState() => _ViewImagesState();
}

class _ViewImagesState extends State<ViewImages> {
  final List<BannerModel> images = [
    BannerModel(image: 'assets/images/details1.png'),
    BannerModel(image: 'assets/images/details1.png'),
    BannerModel(image: 'assets/images/details1.png'),
    BannerModel(image: 'assets/images/details1.png'),
    BannerModel(image: 'assets/images/details1.png'),
    BannerModel(image: 'assets/images/details1.png'),
    BannerModel(image: 'assets/images/details1.png'),
    BannerModel(image: 'assets/images/details1.png'),
  ];

  final PageController _pageController = PageController();

  int currentPageIndex = 0;
  // لحفظ الفهرس الحالي
  @override
  void initState() {
    super.initState();

    // بعد بناء الصفحة، احصل على القيمة الحالية لـ page
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        currentPageIndex = _pageController.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            onPageChanged: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 3,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: images.length,
                      effect: const ExpandingDotsEffect(
                        dotWidth: 8,
                        dotHeight: 8,
                        spacing: 5,
                        dotColor: Colors.white,
                        activeDotColor: Colors.blue,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        '${currentPageIndex + 1}/${images.length}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 0,
            right: 0,
            child: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 28,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              elevation: 0,
              title: CustomAppBar(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
