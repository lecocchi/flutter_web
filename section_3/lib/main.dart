import 'package:flutter/material.dart';

import 'config/get_it_config.dart';
import 'router/route_generator.dart';
import 'services/navigation_service.dart';
import 'ui/layout/main_layout_page.dart';

void main() {
  setUpGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/stateful',
      onGenerateRoute: onGenerateRoute,
      navigatorKey: getIt.get<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(child: child!);
      },
    );
  }
}
