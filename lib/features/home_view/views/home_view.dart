import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/generated/l10n.dart';

import '../../home_view/views/widgets/breaking_list_horizintal.dart';
import '../../home_view/views/widgets/podcast_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(child: PodcastItem()),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Text(
              S.of(context).breaking,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
            ),
          ),
        ),
        const BreakingListHorizintal(),
      ],
    );
  }
}
