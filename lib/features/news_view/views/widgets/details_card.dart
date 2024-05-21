import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:news/generated/l10n.dart';
import 'package:news/utl/model/article_mdel.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    Key? key,
    required this.articleModel,
  }) : super(key: key);

  final ArticleModel articleModel;

  String formatTime(String isoDate) {
    DateTime dateTime = DateTime.parse(isoDate);
    DateFormat timeFormat = DateFormat('EEE: hh:mm a,M/d/y');
    return timeFormat.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: theme.cardTheme.color, // استخدم لون الكارد المناسب للثيم
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  color:
                      theme.cardTheme.color, // استخدم لون الكارد المناسب للثيم
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.history_toggle_off_rounded,
                          color: theme.iconTheme
                              .color, // استخدم لون الأيقونة المناسب للثيم
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          formatTime(articleModel.publishedAt ?? ''),
                          style: TextStyle(
                              color: theme.textTheme.bodyLarge
                                  ?.color), // استخدم لون النص المناسب للثيم
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "${articleModel.title}.",
              style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800), // استخدم نمط النص المناسب للثيم
            ),
            Text(
              "${articleModel.description}.",
              style:
                  theme.textTheme.bodyMedium, // استخدم نمط النص المناسب للثيم
            ),
            Text(
              "${articleModel.content}.",
              style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.textTheme.bodySmall
                      ?.color), // استخدم لون النص المناسب للثيم
            ),
            SizedBox(height: 10.h),
            Container(
              decoration: BoxDecoration(
                color: theme.cardTheme.color, // استخدم لون الكارد المناسب للثيم
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).Author,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.blue, // لون ثابت
                      ), // استخدم نمط النص المناسب للثيم
                    ),
                    Expanded(
                      child: Text(
                        articleModel.author ?? '',
                        style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight
                                .w800), // استخدم نمط النص المناسب للثيم
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
