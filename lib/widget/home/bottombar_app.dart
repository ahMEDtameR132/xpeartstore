import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:shop_app/pages/login_page.dart';
import 'package:shop_app/pages/profile_page.dart';
import 'package:shop_app/pages/card_card_page.dart';
import 'package:shop_app/pages/shopping_page.dart';
import 'package:shop_app/pages/singin_page.dart';
import 'package:shop_app/tools/apptextstyles.dart';
import 'package:shop_app/tools/text_tools.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeContent(),
    const ShoppingPage(),
    const CardCardPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Text(
          TextTools.appBarTitle,
          style: AppTextStyles.googleFontApp(
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: Text(
              TextTools.login,
              style: AppTextStyles.googleFontApp2(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SinginPage()),
              );
            },
            child: Text(
              TextTools.singin,
              style: AppTextStyles.googleFontApp2(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
      body: _pages[_selectedIndex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                selectedItemColor: const Color.fromARGB(255, 255, 251, 1),
                unselectedItemColor: const Color.fromARGB(255, 0, 255, 42),
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag),
                    label: 'Shop',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
