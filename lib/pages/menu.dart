import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tugas_slicing_pkk/common/konserklik_colors.dart';
import 'package:tugas_slicing_pkk/pages/history_page/history_page.dart';
import 'package:tugas_slicing_pkk/pages/home_page/home_page.dart';
import 'package:tugas_slicing_pkk/pages/profile_page/profile_page.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    {
      PersistentTabController _controller =
          PersistentTabController(initialIndex: 0);

      List<Widget> _buildScreens() {
        return [
          const HomePage(),
          const HistoryPage(),
          const ProfilePage(),
        ];
      }

      List<PersistentBottomNavBarItem> _navbarItem() {
        return [
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.home_filled,
            ),
            inactiveColorPrimary: KonserKlikColor.blackBase,
            activeColorPrimary: KonserKlikColor.toscaBase,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.history,
            ),
            inactiveColorPrimary: KonserKlikColor.blackBase,
            activeColorPrimary: KonserKlikColor.toscaBase,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.person,
            ),
            inactiveColorPrimary: KonserKlikColor.blackBase,
            activeColorPrimary: KonserKlikColor.toscaBase,
          ),
        ];
      }

      return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navbarItem(),
        confineInSafeArea: true,
        backgroundColor: KonserKlikColor.whiteBase,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        margin: const EdgeInsets.all(10),
        decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFededed).withOpacity(1),
              offset: const Offset(0, 20),
              blurRadius: 50,
              spreadRadius: 27,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
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
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6,
      );
    }
  }
}
