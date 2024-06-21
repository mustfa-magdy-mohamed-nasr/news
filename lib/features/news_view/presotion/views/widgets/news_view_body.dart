import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/news_view/presotion/views/widgets/details_card.dart';
import 'package:news/features/save/presntion/view_model/cubit/add_artcle_in_hive_cubit/add_artcle_in_hive_cubit.dart';
import 'package:news/features/save/presntion/view_model/cubit/fetch_all_artcle_cubit/artcl_cubit_cubit.dart';
import 'package:news/features/home/data/model/article_mdel.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          height: 300.h,
          width: double.infinity,
          child: CachedNetworkImage(
            imageUrl: articleModel.urlToImage ?? '',
            fit: BoxFit.fill,
            width: double.infinity,
            height: 350.h,
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.white,
              child: SizedBox(
                width: 300.w,
                height: 170.h, // Adjust height as needed
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            errorWidget: (context, url, error) => SizedBox(
              height: 20.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/images.png",
                  fit: BoxFit.fill,
                  width: 300.w,
                  height: 170.h,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 280.h,
          left: 0,
          right: 0,
          child: DetailsCard(articleModel: articleModel),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                // color: Colors.white,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
              ),
              InkWell(
                onTap: () {
                  BlocProvider.of<AddArtcleInHiveCubit>(context)
                      .addArtcle(articleModel);

                  articleModel.faverot = true;
                  BlocProvider.of<ArtclCubitCubit>(context).fetchAllArtcle();
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        BlocBuilder<AddArtcleInHiveCubit, AddArtcleInHiveState>(
                      builder: (context, state) {
                        return Icon(
                          articleModel.faverot == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color:
                              articleModel.faverot == true ? Colors.red : null,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: GestureDetector(
              onTap: () {
                final Uri url = Uri.parse(articleModel.url ?? '');
                launchUrl(url, mode: LaunchMode.externalApplication);
                debugPrint('============url${articleModel.url}');
              },
              child: const Card(
                  // color: Colors.white,
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.open_in_browser),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
