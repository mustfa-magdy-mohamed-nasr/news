import 'package:flutter/material.dart';
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
              child: Image.network(
                articleModel.urlToImage ??
                    'assets/images/coding_languages.webp',
                fit: BoxFit.cover,
                width: 350.w,
              )),
          SizedBox(
            height: 5.h,
          ),
          Column(
            children: [
              SizedBox(
                  width: 350.w,
                  child: Text(
                    articleModel.title??'',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                  )),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                  width: 350.w,
                  child: Text(
                    articleModel.description ?? '',
                    style: const TextStyle(color: Colors.grey),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
