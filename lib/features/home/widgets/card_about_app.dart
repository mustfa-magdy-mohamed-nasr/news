import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardAboutApp extends StatelessWidget {
  const CardAboutApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
      child: const Card(
        // color: Colors.grey[300],
        child: ListTile(
          leading: Icon(
            Icons.info_outline,
            // color: Colors.grey[600],
          ),
          title: Text('About App'),
        ),
      ),
    );
  }
}
