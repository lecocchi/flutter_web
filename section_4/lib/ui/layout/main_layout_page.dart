import 'package:flutter/material.dart';

import '../shared/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomAppMenu(),
            Expanded(
                child: Center(
              child: child,
            ))
          ],
        ),
      ),
    );
  }
}
