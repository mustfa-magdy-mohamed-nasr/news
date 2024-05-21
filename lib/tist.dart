import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/features/searsh/views/widgets/no_search_body.dart';
import 'package:news/servises/search_servises.dart';
import 'package:news/utl/model/article_mdel.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final Uri url = Uri.parse('https://flutter.dev');

            // final Uri url = Uri.parse(articleModel.url ?? '');
            launchUrl(url, mode: LaunchMode.externalApplication);
            print('llllll');
          },
          child: const Text('Click to Fetch News'),
        ),
      ),
    );
  }
}
