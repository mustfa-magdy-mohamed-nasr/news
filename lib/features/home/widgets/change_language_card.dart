import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLanguageCard extends StatelessWidget {
  const ChangeLanguageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 50.h),
      child: Card(
        color: Colors.grey[300],
        child: ListTile(
          leading: Icon(
            Icons.language,
            color: Colors.grey[600],
          ),
          title: const Text('language'),
          subtitle: const Text('English'),
          trailing: const Icon(
            Icons.change_circle_outlined,
            color: Color(0xff5F60c8),
          ),
        ),
      ),
    );
  }
}