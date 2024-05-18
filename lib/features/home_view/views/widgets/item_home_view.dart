import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/utl/model/article_mdel.dart';

class ItemHomeView extends StatelessWidget {
  const ItemHomeView({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: articleModel.urlToImage ??
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mBLkHZThufMS8ayDKBbWsoEcJnA0huvTqLYJAl7HQw&s',
              fit: BoxFit.cover,
              width: 350.w,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => ClipRRect(
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
                  )),
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
                  )),
            ],
          )
        ],
      ),
    );
  }
}
