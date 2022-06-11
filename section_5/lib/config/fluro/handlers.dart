import 'package:fluro/fluro.dart';
import 'package:section_5/ui/pages/home_page.dart';

Handler homeHandler() {
  return Handler(
    handlerFunc: (context, parameters) {
      final String page = parameters['page']!.first;

      if (page != "/") {
        return const HomePage();
      }
    },
  );
}
