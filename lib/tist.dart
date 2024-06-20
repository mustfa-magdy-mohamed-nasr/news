import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/home_view/views/widgets/item_home_view_loading.dart';
import 'package:news/features/searsh/views/widgets/no_search_body.dart';
import 'package:news/servises/search_servises.dart';
import 'package:news/utl/model/article_mdel.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return const ItemHomeViewLoading();
          },
        ));
  }
}

