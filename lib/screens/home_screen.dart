import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Components'),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(menuOptions[index].nameRoute),
          leading: Icon(
            menuOptions[index].icon,
            color: AppTheme.primary,
          ),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => const ListviewScreen(),
            // );
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
