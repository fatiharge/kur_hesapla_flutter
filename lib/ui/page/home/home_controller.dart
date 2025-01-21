import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:kur_hesapla/ui/page/home/calculator/view/calculator_page.dart';
import 'package:kur_hesapla/ui/page/home/marked/view/marked_page.dart';
import 'package:kur_hesapla/ui/page/home/news/view/news_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:uikit/utility/extension/context_extension.dart';

@RoutePage()
class HomeControllerPage extends StatelessWidget {
  const HomeControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarStyle: NavBarStyle.style9,
      context,
      screens: const [
        NewsPage(),
        CalculatorPage(),
        MarkedPage(),
      ],
      controller: PersistentTabController(initialIndex: 1),
      stateManagement: false,
      items: _navBarsItems(),
      resizeToAvoidBottomInset: true,
      backgroundColor: context.colorScheme.onSecondary,
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      _persistentBottomNavBarItemCreator(
        iconData: Icons.newspaper_outlined,
        title: 'News',
      ),
      _persistentBottomNavBarItemCreator(
        iconData: Icons.calculate_outlined,
        title: 'Calculator',
      ),
      _persistentBottomNavBarItemCreator(
        iconData: Icons.history_outlined,
        title: 'History',
      ),
    ];
  }

  PersistentBottomNavBarItem _persistentBottomNavBarItemCreator({
    required IconData iconData,
    String? title,
  }) {
    return PersistentBottomNavBarItem(
      iconSize: 18,
      icon: Icon(iconData),
      title: title,
    );
  }
}
