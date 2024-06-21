import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ItemSearchViewLoading extends StatelessWidget {
  const ItemSearchViewLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                       return _itemSearchViewLoading();
                    },
                    // childCount: newArticleModel.length,
                  ),
                );
  }
 



   
  Widget _itemSearchViewLoading() {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 180.w,
                      height: 12.h, // Adjust height as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey,
                      ),
                      margin: EdgeInsets.only(bottom: 5.h),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 180.w,
                      height: 15.h, // Adjust height as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey,
                      ),
                      margin: EdgeInsets.only(bottom: 5.h),
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 80.w,
                      height: 10.h, // Adjust height as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey,
                      ),
                      margin: EdgeInsets.only(bottom: 5.h),
                    ),
                  ),
                ],
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.white,
                child: SizedBox(
                  width: 120.w,
                  height: 100.h, // Adjust height as needed
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
