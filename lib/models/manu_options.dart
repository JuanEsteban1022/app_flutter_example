import 'package:flutter/material.dart' show IconData, Widget;

/// Creación de un modelo para la implementación de rutas, con parametros personalizados.
class MenuOptions {
  final String route;
  final IconData icon;
  final String nameRoute;
  final Widget screen;

  MenuOptions(
      {required this.route,
      required this.icon,
      required this.nameRoute,
      required this.screen});
}
