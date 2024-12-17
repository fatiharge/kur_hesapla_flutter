import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:kur_hesapla/page/home/calculator/view/calculator_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

@RoutePage()
class HomeControllerPage extends StatelessWidget {
  const HomeControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: const [
        Placeholder(),
        CalculatorPage(),
        Placeholder(),
      ],
      items: _navBarsItems(),
      resizeToAvoidBottomInset: true,
    );
  }

  PersistentBottomNavBarItem _$persistentBottomNavBarItemCreator({
    required IconData iconData,
    String? title,
  }) {
    return PersistentBottomNavBarItem(
      iconSize: 18,
      icon: Icon(iconData),
      title: title,
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      _$persistentBottomNavBarItemCreator(
        iconData: Icons.stacked_line_chart_outlined,
        title: 'Chart',
      ),
      _$persistentBottomNavBarItemCreator(
        iconData: Icons.calculate_outlined,
        title: 'Calculator',
      ),
      _$persistentBottomNavBarItemCreator(
        iconData: Icons.history,
        title: 'History',
      ),
    ];
  }
}
