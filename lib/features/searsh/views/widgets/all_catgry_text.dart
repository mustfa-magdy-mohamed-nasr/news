import 'package:flutter/material.dart';
import 'package:news/features/searsh/views/widgets/catgry_text.dart';

class AllCatgryText extends StatelessWidget {
  const AllCatgryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CatgryText(
          text: 'Health',
          fcolor: Colors.red,
          lcolor: Colors.black,
        ),
        CatgryText(
          text: 'Food',
          fcolor: Colors.red,
          lcolor: Colors.black,
        ),
        CatgryText(
          text: 'Art',
          fcolor: Colors.red,
          lcolor: Colors.black,
        ),
        CatgryText(
          text: 'Politics',
          fcolor: Colors.red,
          lcolor: Colors.black,
        ),
        CatgryText(
          text: 'more',
          fcolor: Colors.red,
          lcolor: Colors.blue,
        ),
      ],
    );
  }
}


