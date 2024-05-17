import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.imageTexts,
  });

  final String image;
  final String imageTexts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.bottomCenter,
        height: 200.h,
        width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            color: MaterialStatePropertyAll(Colors.grey.withOpacity(.1)),
            // backgroundColor: Colors.black.withOpacity(0.1),
            label: Text(
              imageTexts, // Text corresponding to the image
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      //),
    );
  }
}
