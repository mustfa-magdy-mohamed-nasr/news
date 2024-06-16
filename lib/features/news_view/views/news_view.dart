import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:news/features/news_view/views/widgets/details_card.dart';
import 'package:news/utl/model/article_mdel.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final adjustedHeight = screenHeight - 300;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: 300.h,
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: articleModel.urlToImage ?? '',
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 350.h,
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
              Positioned(
                top: 280.h,
                left: 0,
                right: 0,
                child: DetailsCard(articleModel: articleModel),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      // color: Colors.white,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back)),
                    ),
                    InkWell(
                      onTap: () {
                        final Uri url = Uri.parse(articleModel.url ?? '');
                        launchUrl(url, mode: LaunchMode.inAppBrowserView);
                        log('llllll');
                      },
                      child: const Card(
                          // color: Colors.white,
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.open_in_browser),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
