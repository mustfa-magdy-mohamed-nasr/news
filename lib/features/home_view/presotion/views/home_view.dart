import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/home_view/presotion/views/widgets/podcast_item_loding_return.dart';
import 'package:news/generated/l10n.dart';

import 'widgets/breaking_list_horizintal.dart';
import 'widgets/podcast_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const PodCastItemLodingReturn(),
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
