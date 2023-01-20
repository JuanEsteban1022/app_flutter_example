import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'listview',
        nameRoute: 'Listview Screen',
        screen: const ListviewScreen(),
        icon: Icons.list),
    MenuOptions(
        route: 'card',
        nameRoute: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_giftcard_outlined),
    MenuOptions(
        route: 'alert',
        nameRoute: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOptions(
        route: 'avatar',
        nameRoute: 'Circle Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOptions(
        route: 'animated',
        nameRoute: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.animation_outlined),
    MenuOptions(
        route: 'Input',
        nameRoute: 'Input Screen',
        screen: const InputScreen(),
        icon: Icons.input_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview': (BuildContext context) => const ListviewScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
