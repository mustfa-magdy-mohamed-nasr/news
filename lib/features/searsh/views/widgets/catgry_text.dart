
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/searsh/cubit/chang_text_cubit.dart';

class CatgryText extends StatelessWidget {
  const CatgryText({
    required this.text,
    Key? key,
    required this.fcolor,
    required this.lcolor,
  }) : super(key: key);

  final String text;
  final Color fcolor;
  final Color lcolor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextColorCubit, String?>(
      builder: (context, selectedText) {
        final isTextClicked = selectedText == text;
        return GestureDetector(
          onTap: () {
            context.read<TextColorCubit>().toggleTextColor(text);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: isTextClicked ? fcolor : lcolor,
              ),
            ),
          ),
        );
      },
    );
  }
}
