import 'package:fluro/fluro.dart';
import 'package:section_5/config/fluro/handlers.dart';

final FluroRouter router = FluroRouter();

void setUpFluro() {
  router.define('/:page', handler: homeHandler());

  router.notFoundHandler = homeHandler();
}
