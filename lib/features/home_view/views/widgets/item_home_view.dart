import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/news_view/views/news_view.dart';
import 'package:news/utl/model/article_mdel.dart';

class ItemHomeView extends StatelessWidget {
  const ItemHomeView({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    String imageUrl = articleModel.urlToImage != null &&
            articleModel.urlToImage!.isNotEmpty
        ? articleModel.urlToImage!
        : 'https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: GestureDetector(
        onTap: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NewsView(
                        articleModel: articleModel,
                      )));
        }),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: 350.w,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    padding: const EdgeInsets.all(150),
                    width: 350.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey),
                    
                  );
                },
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  "assets/images/images.png",
                  fit: BoxFit.fill,
                  width: 300.w,
                  height: 170.h,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Column(
              children: [
                SizedBox(
                  width: 350.w,
                  child: Text(
                    articleModel.title ?? '',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textDirection: TextDirection.ltr,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 350.w,
                  child: Text(
                    articleModel.description ?? '',
                    style: const TextStyle(color: Colors.grey),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
 