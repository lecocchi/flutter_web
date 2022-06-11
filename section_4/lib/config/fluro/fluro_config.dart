import 'package:fluro/fluro.dart';
import 'package:section_4/config/fluro/handlers.dart';

final FluroRouter router = FluroRouter();

void setUpFluro() {
  router.define('/',
      handler: statefulHandler(), transitionType: TransitionType.fadeIn);
  router.define('/stateful',
      handler: statefulHandler(), transitionType: TransitionType.fadeIn);
  router.define('/provider',
      handler: providerHandler(), transitionType: TransitionType.fadeIn);

  router.notFoundHandler = notFoundHandler();
  
}
