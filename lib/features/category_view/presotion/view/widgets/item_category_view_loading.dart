import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ItemCategoryViewLoading extends StatelessWidget {
  const ItemCategoryViewLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Adjust according to your needs
      itemBuilder: (context, index) {
        return _buildLoadingItem();
      },
    );
  }

  Widget _buildLoadingItem() {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildShimmerContainer(width: 180.w, height: 12.h),
                  SizedBox(height: 15.h),
                  _buildShimmerContainer(width: 180.w, height: 15.h),
                  SizedBox(height: 18.h),
                  _buildShimmerContainer(width: 80.w, height: 10.h),
                ],
              ),
              _buildShimmerImageContainer(width: 120.w, height: 100.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerContainer(
      {required double width, required double height}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey,
        ),
        margin: EdgeInsets.only(bottom: 5.h),
      ),
    );
  }

  Widget _buildShimmerImageContainer(
      {required double width, required double height}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
