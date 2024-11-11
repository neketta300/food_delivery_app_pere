import 'package:del_app_green/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          HomePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedLabelStyle: GoogleFonts.lato(color: Colors.black, fontSize: 14),
        showUnselectedLabels: false,
        currentIndex: _selectedTab,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/home.svg"), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/cart.svg"), label: 'Cart'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/serch.svg"),
              label: 'Serch'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/history.svg"),
              label: 'History'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/user.svg"),
              label: 'Profile'),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
