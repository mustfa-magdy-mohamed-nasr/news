import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemSearchView extends StatelessWidget {
  const ItemSearchView({
    Key? key,
  }) : super(key: key);
  final String author = 'Mustafa Magdy Muhamed Nasr';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/coding_languages.webp',
                fit: BoxFit.cover,
                width: 110.w,
                height: 80.h,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200.w,
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'fekandnlsnmse;oegifekandnlsnmse;oegifekandnlsnmse;oegifekandnlsnmse;oegifekandnlsnmse;oegi',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: SizedBox(
                  width: 170.w,
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    'By:$author',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
