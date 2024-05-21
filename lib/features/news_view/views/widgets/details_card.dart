
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:news/utl/model/article_mdel.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;
  String formatTime(String isoDate) {
    DateTime dateTime = DateTime.parse(isoDate);
    DateFormat timeFormat = DateFormat('EEE: hh:mm a,M/d/y');
    return timeFormat.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  color: const Color(0xffE8E8E8),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                    child: Row(
                      children: [
                        Icon(Icons.history_toggle_off_rounded,
                            color: Colors.grey[700]),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          formatTime(articleModel.publishedAt ?? ''),
                          style: const TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "${articleModel.title}.",
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            ),
            Text(
              "${articleModel.description}.",
              style: const TextStyle(),
            ),
            Text(
              "${articleModel.content}.",
              style: const TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10.h),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffE8E8E8),
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Author: ',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Colors.blue),
                    ),
                    Expanded(
                      child: Text(
                        articleModel.author ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18),
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
