import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ItemHomeViewLoading extends StatelessWidget {
  const ItemHomeViewLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                       return _itemHomeViewLoading();
                    },
                    // childCount: newArticleModel.length,
                  ),
                );
  }
 
  }

  Widget _itemHomeViewLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(150),
              width: 350.w,
              height: 200.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.grey),
            ),
            SizedBox(
              height: 5.h,
            ),
            Column(
              children: [
                Container(
                  width: 350.w,
                  height: 20,
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

