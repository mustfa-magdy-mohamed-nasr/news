import 'package:flutter/material.dart';
import 'package:news/features/home_view/presotion/views/widgets/podcast_item_loding.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: PodcastItemLoding(),
      ),
    );
  }
}
