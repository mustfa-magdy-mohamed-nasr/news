import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/widgets/child_in_drawer.dart';
import 'package:news/features/home_view/views/home_view.dart';
import 'package:news/utl/cubits/get_news/get_news_cubit.dart';
import '../category/category.dart';
import '../save/views/save_view.dart';
import '../searsh/views/search_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const SearchView(),
    const SaveView(),
    const Category(),
  ];
  final List<String> titl = ['Home', 'Search', 'Saved', 'Category'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp, color: Colors.black),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.turned_in_not_outlined, color: Colors.black),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined, color: Colors.black),
                label: 'Category',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
          ),
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            centerTitle: true,
            title: Text(
              titl[_selectedIndex],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          drawer: const Drawer(
            child: ChildInDrawer(),
          ),
          body: RefreshIndicator(
              onRefresh: () {
                return BlocProvider.of<GetNewsCubit>(context)
                    .getNews(catagory: 'general');
              },
              child: _widgetOptions[_selectedIndex])),
    );
  }
}
