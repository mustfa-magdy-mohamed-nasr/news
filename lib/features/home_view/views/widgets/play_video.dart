import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayVideo extends StatelessWidget {
  const PlayVideo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final Uri url = Uri.parse(
            'https://open.spotify.com/episode/71Q9jO0kASP3SLPLwMabZI' ?? '');
        launchUrl(url, mode: LaunchMode.inAppBrowserView);
        log('llllll');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 45.h,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36.w),
            color: const Color.fromARGB(125, 62, 62, 62),
          ),
          child: const Center(
              child: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 50,
          )),
        ),
      ),
    );
  }
}
