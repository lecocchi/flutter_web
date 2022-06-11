import 'package:flutter/material.dart';

import '../../config/get_it_config.dart';
import '../../services/navigation_service.dart';
import 'custom_text_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return constraints.maxWidth > 570
            ? const _TableDesktopMenu()
            : const _MobileMenu();
      },
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          CustomTextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/stateful');
              getIt.get<NavigationService>().navigateTo('/stateful');
            },
            text: 'Contador Stateful',
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomTextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/provider');
              getIt.get<NavigationService>().navigateTo('/provider');
            },
            text: 'Contador Provider',
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomTextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/abc123');
              getIt.get<NavigationService>().navigateTo('abc123');
            },
            text: 'Otra página',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/stateful');
              getIt.get<NavigationService>().navigateTo('/stateful');
            },
            text: 'Contador Stateful',
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomTextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/provider');
              getIt.get<NavigationService>().navigateTo('/provider');
            },
            text: 'Contador Provider',
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomTextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/abc123');
              getIt.get<NavigationService>().navigateTo('abc123');
            },
            text: 'Otra página',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
