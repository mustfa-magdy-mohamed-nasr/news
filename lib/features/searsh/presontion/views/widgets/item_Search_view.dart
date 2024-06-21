import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/news_view/presotion/views/news_view.dart';
import 'package:news/features/home/data/model/article_mdel.dart';
import 'package:shimmer/shimmer.dart';

class ItemSearchView extends StatelessWidget {
  const ItemSearchView({
    Key? key,
    required this.articleModel,
  }) : super(key: key);
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    String imageUrl = articleModel.urlToImage != null &&
            articleModel.urlToImage!.isNotEmpty
        ? articleModel.urlToImage!
        : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mBLkHZThufMS8ayDKBbWsoEcJnA0huvTqLYJAl7HQw&s';

    final theme = Theme.of(context);

    return GestureDetector(
      onTap: (() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewsView(
                      articleModel: articleModel,
                    )));
      }),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 180.w,
                    child: Text(
                      articleModel.title ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: theme
                            .textTheme.bodyLarge?.color, // Color based on theme
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: SizedBox(
                      width: 170.w,
                      child: Text(
                        'By: ${articleModel.author}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: theme.textTheme.bodySmall
                              ?.color, // Color based on theme
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 120.w,
                height: 100.h,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: 350.w,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Shimmer.fromColors(
                          baseColor: Colors.grey,
                          highlightColor: Colors.white,
                          child: SizedBox(
                            width: 120.w,
                            height: 100.h, // Adjust height as needed
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.grey,
                              ),
                            ),
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
        ),
      ),
    );
  }
}
