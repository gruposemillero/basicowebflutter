import 'package:backend_dashboard_flutter/ui/views/counter_provider_view.dart';
import 'package:backend_dashboard_flutter/ui/views/counter_view.dart';
import 'package:backend_dashboard_flutter/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/stateful':
        return _fadeRoute(CounterView(base: '3'), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderView(base: '20'), '/provider');
      default:
        return _fadeRoute(View404(), '/404');
    }
  }

  // cambiar transicion de manera mas como noremalito para web

  static PageRoute _fadeRoute(Widget child, String routName) {
    // return MaterialPageRoute(
    // settings: RouteSettings(name: "/404"), builder: (_) => Page404());
    return PageRouteBuilder(
      settings: RouteSettings(name: routName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, ____) => (kIsWeb)
          ? FadeTransition(
              opacity: animation,
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              child: child, // par movil
              linearTransition: true),
    );
  }
}
