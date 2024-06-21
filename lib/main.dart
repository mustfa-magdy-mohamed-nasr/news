import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:news/generated/l10n.dart';
import 'package:news/utl/contanit.dart';
import 'package:news/features/save/presntion/view_model/cubit/add_artcle_in_hive_cubit/add_artcle_in_hive_cubit.dart';
import 'package:news/features/save/presntion/view_model/cubit/fetch_all_artcle_cubit/artcl_cubit_cubit.dart';
import 'package:news/features/category/presontion/view_model/cubit/get_category/get_category_cubit.dart';
import 'package:news/features/home/presontion/view_model/cubit/get_news/get_news_cubit.dart';
import 'package:news/utl/cubits/locale_cubi/locale_cubit.dart';
import 'package:news/features/home/data/model/article_mdel.dart';

import 'features/home/presontion/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(ArticleModelAdapter());
  await Hive.openBox<ArticleModel>(kArticleBox);

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
              create: (context) => ArtclCubitCubit()..fetchAllArtcle(),
            ),
            BlocProvider(create: (context) => AddArtcleInHiveCubit()),
            BlocProvider(
              create: (context) => GetNewsCubit()..getNews(catagory: 'general'),
            ),
            BlocProvider(
              create: (context) => GetCategoryCubit(),
            ),
            BlocProvider(
              create: (context) => LocaleCubit(),
            ),
            BlocProvider(
              create: (context) => ThemeCubit(),
            ),
          ],
          child: BlocBuilder<ThemeCubit, AppTheme>(
            builder: (context, themeState) {
              return BlocBuilder<LocaleCubit, Locale>(
                builder: (context, localeState) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Flutter Theme and Locale Demo',
                    theme: themeState == AppTheme.Light
                        ? ThemeData.light()
                        : ThemeData.dark(),
                    locale: localeState,
                    supportedLocales: const [
                      Locale('en'),
                      Locale('ar'),
                    ],
                    localizationsDelegates: const [
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                      S.delegate,
                    ],
                    home: const Home(),
                    // home: const Home(),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
