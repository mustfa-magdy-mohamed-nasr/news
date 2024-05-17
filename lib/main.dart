import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/tist.dart';
import 'package:news/utl/cubits/cubit/get_news_cubit.dart';

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
        return BlocProvider(
          create: (context) => GetNewsCubit()..getNews(catagory: 'general'),
          child: const MaterialApp(
            // home: MyWidget(),
            home: Home(),
          ),
        );
      },
    );
  }
}
/**
 * BlocProvider(
      create: (context) => MemberCubit()..fetchAllMember(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.dark(),
        home: ContactView(),
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => const ContactView(),
        //   '/page1': (context) => const AddMemberView(),
        //   '/page2': (context) => const DetalisView(),
        //   '/page3': (context) => const EditView(),
        //   // '/page2': (context) => Page2(),
        // },
      ),
    );
  }
}

 */