import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/main_layout/tabs/fav/favourite.dart';
import 'package:evently/main_layout/tabs/home/home.dart';
import 'package:evently/main_layout/tabs/maps/maps.dart';
import 'package:evently/main_layout/tabs/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;
  List<Widget> tabs = const [Home(), Maps(), Favourite(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[selectedIndex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildBottomNavBar() {
    return BottomAppBar(
      notchMargin: 8,
      child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: _onBottomNavBarItemClicked,
          items: [
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  SvgIconsAssets.selectedHome,
                ),
                icon: SvgPicture.asset(
                  SvgIconsAssets.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  SvgIconsAssets.selectedMaps,
                ),
                icon: SvgPicture.asset(SvgIconsAssets.maps),
                label: "Maps"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  SvgIconsAssets.selectedFav,
                ),
                icon: SvgPicture.asset(SvgIconsAssets.favourite),
                label: "Fav"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  SvgIconsAssets.selectedProfile,
                ),
                icon: SvgPicture.asset(SvgIconsAssets.profile),
                label: "profile"),
          ]),
    );
  }

  void _onBottomNavBarItemClicked(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}
