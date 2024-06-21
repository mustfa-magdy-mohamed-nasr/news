import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/widgets/card_about_app.dart';
import 'package:news/features/home/widgets/card_listTtile_switch.dart';
import 'package:news/features/home/widgets/change_language_card.dart';
import 'package:news/features/home/widgets/custom_circle_avatar.dart';
import 'package:news/utl/cubits/locale_cubi/locale_cubit.dart';

class ChildInDrawer extends StatelessWidget {
  const ChildInDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomCircleAvatar(),
        const ChangeLanguageCard(),
        CardListTileSwitch(
          icon: Icons.mode_night,
          isSwitched: false,
          title: 'Dark Mode',
          onChanged: () {
            context.read<ThemeCubit>().toggleTheme();
          },
        ),
        // const CardListTileSwitch(
        //   icon: Icons.change_circle_outlined,
        //   isSwitched: true,
        //   title: 'Change City',
        // ),
        const CardAboutApp(),
      ],
    );
  }
}
