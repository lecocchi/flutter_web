import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  final PageController scrollController = PageController();

  void goToIndex(int page) {
    scrollController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
