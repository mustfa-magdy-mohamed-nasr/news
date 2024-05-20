import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/servises/search_servises.dart';
import 'package:news/tist.dart';
import 'package:news/utl/cubits/get_category/get_category_cubit.dart';
import 'package:news/utl/cubits/get_news/get_news_cubit.dart';
import 'package:news/utl/model/article_mdel.dart';

import 'features/home/home.dart';

void main() async {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => GetNewsCubit()..getNews(catagory: 'general'),
            ),
            BlocProvider(
              create: (context) => GetCategoryCubit(),
            ),
          ],
          child: const MaterialApp(
            // home: MyWidget(),
            home: Home(),
          ),
        );
      },
    );
  }
}
