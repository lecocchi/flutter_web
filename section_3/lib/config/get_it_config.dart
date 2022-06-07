import 'package:get_it/get_it.dart';

import '../services/navigation_service.dart';

final GetIt getIt = GetIt.instance;

void setUpGetIt() {
  getIt.registerLazySingleton(() => NavigationService());
}
