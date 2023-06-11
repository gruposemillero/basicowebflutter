import 'package:backend_dashboard_flutter/locator.dart';
import 'package:backend_dashboard_flutter/router/router.dart';
import 'package:backend_dashboard_flutter/services/navigator_servide.dart';
import 'package:backend_dashboard_flutter/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';
import 'package:backend_dashboard_flutter/router/router_generator.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // routes: {
      //   '/stateful': (_) => CounterPage(),
      //   '/provider': (_) => CounterProviderPage(),
      // },
      // onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigatorService>().navigatorKey,
      builder: (context, child) {
        return MainLayoutPage(
          child: child ?? CircularProgressIndicator(),
        );
      },
    );
  }
}
