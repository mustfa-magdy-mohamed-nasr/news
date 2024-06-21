import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/home_view/presotion/views/widgets/play_video.dart';
import 'package:news/generated/l10n.dart';

class PodcastItem extends StatelessWidget {
  const PodcastItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.8,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Opacity(
              opacity: .80,
              child: Image.asset(
                'assets/images/podcastImage.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 2.8,
              ),
            ),
          ),
          Positioned(top: 100.h, left: 140.w, child: const PlayVideo()),
          Positioned(
            top: 10.h,
            left: 50.w,
            right: 50.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 28.h,
                width: 200.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.w),
                  color: const Color.fromRGBO(255, 255, 255, 0.5),
                ),
                child: Center(
                  child: Text(
                    S.of(context).Podcast_Of_The_Day,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 145.h,
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width - 10.w,
                    child: Text(
                      S.of(context).Osama_Al_Zero,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 20.sp),
                    )),
              )),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.grey[800],
                      size: 30,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
