import 'package:backend_dashboard_flutter/services/navigator_servide.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigatorService());
}
