import 'package:flutter/material.dart';
import 'package:news/features/category_view/presotion/view/widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CategoryViewBody(),
      ),
    );
  }
}
