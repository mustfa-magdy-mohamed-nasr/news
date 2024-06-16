import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/widgets/child_in_drawer.dart';
import 'package:news/features/home_view/views/home_view.dart';
import 'package:news/features/searsh/views/search_view.dart';
import 'package:news/generated/l10n.dart';
import 'package:news/utl/cubits/get_news/get_news_cubit.dart';
import '../category/category.dart';
import '../save/views/save_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<String> titl = [];

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const SearchView(),
    const SaveView(),
    const Category(),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    titl = [
      S.of(context).Home,
      S.of(context).Search,
      S.of(context).Saved,
      S.of(context).Category,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue, // لون العنصر المحدد
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: theme.iconTheme.color,
              ),
              label: S.of(context).Home,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_sharp,
                color: theme.iconTheme.color,
              ),
              label: S.of(context).Search,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.turned_in_not_outlined,
                color: theme.iconTheme.color,
              ),
              label: S.of(context).Saved,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
                color: theme.iconTheme.color,
              ),
              label: S.of(context).Category,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: theme.appBarTheme.backgroundColor,
          centerTitle: true,
          title: Text(
            titl[_selectedIndex],
            style: theme.appBarTheme.titleTextStyle,
          ),
        ),
        drawer: const Drawer(
          child: ChildInDrawer(),
        ),
        body: _widgetOptions[_selectedIndex],
      ),
    );
  }
}
