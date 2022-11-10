import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/views/buyers/nav_screen/account_screen.dart';
import 'package:grocery_app/views/buyers/nav_screen/cart_screen.dart';
import 'package:grocery_app/views/buyers/nav_screen/category_screen.dart';
import 'package:grocery_app/views/buyers/nav_screen/home_screen.dart';
import 'package:grocery_app/views/buyers/nav_screen/search_screen.dart';
import 'package:grocery_app/views/buyers/nav_screen/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow.shade900,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/explore.svg',
              width: 20,
            ),
            label: 'CATEGORIES',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/shop.svg',
              width: 20,
            ),
            label: 'STORE',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
            ),
            label: 'CART',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/account.svg',
            ),
            label: 'ACCOUNT',
          ),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
