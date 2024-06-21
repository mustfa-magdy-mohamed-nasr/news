import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/features/save/presntion/views/widgets/item_search_view_sliver_list.dart';
import 'package:news/features/save/presntion/view_model/cubit/fetch_all_artcle_cubit/artcl_cubit_cubit.dart';
import 'package:news/features/home/data/model/article_mdel.dart';
import 'package:news/generated/l10n.dart';

class CustomScrollViewSaveViewBody extends StatelessWidget {
  const CustomScrollViewSaveViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtclCubitCubit, ArtclCubitState>(
      builder: (context, state) {
        if (state is ArtclStateEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/no save.svg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width - 50.h,
                ),
                Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Text(
                    S.of(context).No_Items_Available, // استخدم التعريب للرسالة
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (state is ArtclAtateSuccess) {
          List<ArticleModel> artcles =
              BlocProvider.of<ArtclCubitCubit>(context).artcles ?? [];
          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).All_Item,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ItemSearchViewSliverList(
                      articleModel: artcles[index],
                    );
                  },
                  childCount: artcles.length,
                ),
              ),
            ],
          );
        } else {
          // حالة التحميل أو الحالة الابتدائية
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
