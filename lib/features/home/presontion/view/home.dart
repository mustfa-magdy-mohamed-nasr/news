import 'package:flutter/material.dart';
import 'package:news/features/home/presontion/view/widgets/child_in_drawer.dart';
import 'package:news/features/home_view/presotion/views/home_view.dart';
import 'package:news/features/searsh/presontion/views/search_view.dart';
import 'package:news/generated/l10n.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../../category/presontion/views/category.dart';
import '../../../save/presntion/views/save_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeView(),
      const SearchView(),
      const SaveView(),
      const Category(),
    ];

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_outlined),
          title: S.of(context).Home,
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.search_sharp),
          title: S.of(context).Search,
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.turned_in_not_outlined),
          title: S.of(context).Saved,
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.category_outlined),
          title: S.of(context).Category,
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
          child: ChildInDrawer(),
        ),
        body: PersistentTabView(
          context,
          controller: PersistentTabController(initialIndex: 0),
          screens: screens,
          items: navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 150),
          ),
          navBarStyle: NavBarStyle.style6, // اختيار نمط البار السفلي حسب الحاجة
        ),
      ),
    );
  }
}
