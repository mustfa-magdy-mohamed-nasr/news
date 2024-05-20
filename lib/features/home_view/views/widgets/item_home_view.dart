import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/news_view/news_view.dart';
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewsView()));
        }),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                width: 350.w,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => SizedBox(
                  height: 20.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/images.png",
                      fit: BoxFit.fill,
                      width: 300.w,
                      height: 170.h,
                    ),
                  ),
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
