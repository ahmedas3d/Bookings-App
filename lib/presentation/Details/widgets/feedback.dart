import 'package:booking_app/models/feedback_model.dart';
import 'package:flutter/material.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة التعليقات
    final List<FeedbackModel> feedbackList = [
      FeedbackModel(
        name: 'الاسم هنا',
        imageUrl: 'assets/images/person.jpeg',
        comment:
            'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه بروشور او فلاير على سبيل المثال او نماذج مواقع انترنت',
        rating: 4,
      ),
      FeedbackModel(
        name: 'عميل آخر',
        imageUrl: 'assets/images/person.jpeg',
        comment:
            'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه بروشور او فلاير على سبيل المثال او نماذج مواقع انترنت.',
        rating: 3,
      ),
      // أضف المزيد من التعليقات هنا
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // عرض كل تعليق باستخدام ListView
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: feedbackList.length,
            itemBuilder: (context, index) {
              final feedback = feedbackList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'عميل سبق له الحجز من \nداخـــل التطبيـــــــق',
                          style: TextStyle(
                              fontFamily: 'Almarai', color: Colors.grey),
                          textDirection: TextDirection.rtl,
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              feedback.name,
                              style: const TextStyle(
                                fontFamily: 'Almarai',
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: List.generate(
                                5,
                                (index) {
                                  return Icon(
                                    index < feedback.rating
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: Colors.yellow[600],
                                    size: 24,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage(feedback.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      feedback.comment,
                      style: const TextStyle(
                        fontFamily: 'Almarai',
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 3,
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
