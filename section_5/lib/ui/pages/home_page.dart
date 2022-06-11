import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_5/providers/page_provider.dart';
import 'package:section_5/ui/shared/custom_app_menu.dart';
import 'package:section_5/ui/views/about_view.dart';
import 'package:section_5/ui/views/contact_view.dart';
import 'package:section_5/ui/views/home_view.dart';
import 'package:section_5/ui/views/location_view.dart';
import 'package:section_5/ui/views/pricing_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: const [
            _HomeBody(),
            Positioned(
              right: 20,
              top: 20,
              child: CustomAppMenu(),
            )
          ],
        ),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: const [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}
