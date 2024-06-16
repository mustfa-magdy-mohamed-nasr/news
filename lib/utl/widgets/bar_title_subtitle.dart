import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarTitelSubtitle extends StatelessWidget {
  const BarTitelSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Wrap(
          children: [
            Text(
              subtitle,
              style: TextStyle(fontSize: 18.sp, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
