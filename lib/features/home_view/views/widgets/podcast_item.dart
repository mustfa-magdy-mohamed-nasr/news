import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/home_view/views/widgets/play_video.dart';

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
              opacity: .90,
              child: Image.asset(
                'assets/images/podcastImage.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 2.8,
              ),
            ),
          ),
          Positioned(top: 100.h, left: 140.w, child: const PlayVideo()),
          Positioned(
            top: 195.h,
            left: 120.w,
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
                    "Podcast Of The Day",
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
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'أشهر مبرمج عربي، لم يدرس البرمجة  | أسامة الزيرو',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23.sp),
                    )),
              )),
        ],
      ),
    );
  }
}
