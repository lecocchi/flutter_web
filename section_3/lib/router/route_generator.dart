import 'package:flutter/material.dart';

import '../ui/views/counter_view.dart';
import '../ui/views/not_found_view.dart';
import '../ui/views/provider_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/stateful":
      return _fadeRoute(const CounterView(), settings.name!);
    case '/provider':
      return _fadeRoute(const ProviderView(), settings.name!);
    default:
      return _fadeRoute(const NotFoundView(), settings.name!);
  }
}

PageRoute _fadeRoute(Widget child, String routeName) {
  return PageRouteBuilder(
    settings: RouteSettings(name: routeName),
    pageBuilder: (_, __, ___) => child,
    transitionDuration: const Duration(milliseconds: 200),
    transitionsBuilder: (_, animation, __, ___) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}
