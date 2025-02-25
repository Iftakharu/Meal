import 'package:flutter/material.dart';
import 'package:meals_riverpod/screen/category_screen.dart';
import 'package:meals_riverpod/screen/meals_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex=0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex=index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Widget activePage= CategoryScreen();
    var activePageTitle='Category';

    if(_selectedPageIndex==1){
      activePage=const MealsScreen( meals: []);
      activePageTitle='Favoritue';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.set_meal),label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Favoritue'),
        ],
      ),
    );
  }
}
