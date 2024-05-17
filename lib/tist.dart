import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/servises/news_servises.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
final String apiKey = '2b91e31f819c4512a13aa57726304251';
  final String baseUrl = 'https://newsapi.org/v2/top-headlines';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async{
              var ne =           await Dio().get('$baseUrl?country=us&apiKey=$apiKey&category=business');

              print(ne);
            },
            child: const Text('clic')),
      ),
    );
  }
}
