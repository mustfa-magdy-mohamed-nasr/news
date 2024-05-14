import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemHomeView extends StatelessWidget {
  const ItemHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
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
                    'fekandnlsnmse;oegihlen liehfekandnl',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                  )),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                  width: 350.w,
                  child: const Text(
                    'fekandnlsnmmlmmm;',
                    style: TextStyle(color: Colors.grey),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
