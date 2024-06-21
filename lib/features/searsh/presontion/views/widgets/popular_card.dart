import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    super.key,
    this.onTap,
    required this.titl,
  });
  final void Function()? onTap;
  final String titl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.blue), // تحديد لون الحاشية هنا
          borderRadius: BorderRadius.circular(10.0.w),
        ),
        color: const Color(0xffE1F5FF),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
          child: Text(
            titl,
            style: const TextStyle(color: Colors.blue, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
