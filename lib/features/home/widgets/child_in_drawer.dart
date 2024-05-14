import 'package:flutter/material.dart';
import 'package:news/features/home/widgets/card_about_app.dart';
import 'package:news/features/home/widgets/card_listTtile_switch.dart';
import 'package:news/features/home/widgets/change_language_card.dart';
import 'package:news/features/home/widgets/custom_circle_avatar.dart';

class ChildInDrawer extends StatelessWidget {
  const ChildInDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCircleAvatar(),
        ChangeLanguageCard(),
        CardListTileSwitch(
          icon: Icons.mode_night,
          isSwitched: false,
          title: 'Dark Mode',
        ),
        CardListTileSwitch(
          icon: Icons.change_circle_outlined,
          isSwitched: true,
          title: 'Change City',
        ),
        CardAboutApp(),
      ],
    );
  }
}
