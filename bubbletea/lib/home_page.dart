import 'package:bubbletea/about.dart';
import 'package:bubbletea/bottomnavbar.dart';
import 'package:bubbletea/login_page.dart';
import 'package:bubbletea/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.brown[100],
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                    child: Text(
                  'CAFE BENIGN',
                  style: TextStyle(fontSize: 40),
                )),
              ),
              ListTile(
                title: Text(
                  'About Us',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(Icons.info_rounded),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
              ),
              ListTile(
                title: Text(
                  'Log Out',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(Icons.logout),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.brown[200],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
