import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/save/views/widgets/custom_scrol_view_save_view_body.dart';
import 'package:news/utl/cubits/artcl_cubit_cubit/artcl_cubit_cubit.dart';

class SaveView extends StatelessWidget {
  const SaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArtclCubitCubit(),
      child: const CustomScrollViewSaveViewBody(),
    );
  }
}
