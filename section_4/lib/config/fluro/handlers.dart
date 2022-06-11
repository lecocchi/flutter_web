import 'package:fluro/fluro.dart';
import 'package:section_4/ui/views/counter_view.dart';
import 'package:section_4/ui/views/not_found_view.dart';
import 'package:section_4/ui/views/provider_view.dart';

Handler providerHandler() {
  return Handler(
    handlerFunc: (context, parameters) => const ProviderView(),
  );
}

Handler statefulHandler() {
  return Handler(
    handlerFunc: (context, parameters) => const CounterView(),
  );
}

Handler notFoundHandler() {
  return Handler(
    handlerFunc: (context, parameters) => const NotFoundView(),
  );
}
