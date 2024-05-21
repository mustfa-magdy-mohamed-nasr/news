import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/news_view/views/news_view.dart';
import 'package:news/utl/model/article_mdel.dart';

class ItemSearchView extends StatelessWidget {
  const ItemSearchView({
    Key? key,
    required this.articleModel,
  }) : super(key: key);
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    // تأكد من أن urlToImage ليس فارغًا ويحتوي على عنوان URL صالح
    String imageUrl = articleModel.urlToImage != null &&
            articleModel.urlToImage!.isNotEmpty
        ? articleModel.urlToImage!
        : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mBLkHZThufMS8ayDKBbWsoEcJnA0huvTqLYJAl7HQw&s';

    return GestureDetector(
      onTap: (() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewsView(
                      articleModel: articleModel,
                    )));
      }),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 180.w,
                  child: Text(
                    articleModel.title ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  child: SizedBox(
                    width: 170.w,
                    child: Text(
                      'By:${articleModel.author}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 120.w,
            height: 100.h,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageUrl ??
                      'https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.cover,
                  width: 350.w,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
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
            ),
          ),
          const Divider(
            height: 10,
          ),
        ],
      ),
    );
  }
}
