import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/searsh/presontion/view_model/cubit/search_news/search_news_cubit.dart';
import 'package:news/generated/l10n.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        var cubit = BlocProvider.of<SearchNewsCubit>(context);
        cubit.searchNews(query: value);
      },
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.format_list_bulleted),
        prefixIcon: const Icon(Icons.search),
        label: Text(S.of(context).search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
