import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: EdgeInsets.only(
        top: 50.h,
      ),
      width: 100.w,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff5F60c8),
      ),
      child: CircleAvatar(
        backgroundColor: const Color(0xff6867c6),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 40,
            // backgroundColor: Colors.amber,
            backgroundColor:
                const Color.fromARGB(255, 101, 100, 197),
            child: Icon(
              Icons.reorder_sharp,
              color: Colors.white,
              size: 35.w,
            ),
          ),
        ),
      ),
    );
  }
}
