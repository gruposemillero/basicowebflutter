import 'package:backend_dashboard_flutter/ui/views/counter_provider_view.dart';
import 'package:backend_dashboard_flutter/ui/views/counter_view.dart';
import 'package:backend_dashboard_flutter/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterhandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(microseconds: 200),
    );
    router.define(
      '/stateful/:base',
      handler: _counterhandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(microseconds: 200),
    );
    router.define(
      '/stateful',
      handler: _counterhandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(microseconds: 200),
    );
    router.define(
      '/provider',
      handler: _counterhandlerprovider,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(microseconds: 200),
    );
    router.define(
      '/dashboard/users/:userid/:roleid',
      handler: _dashboardUserHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: Duration(microseconds: 200),
    );
    router.notFoundHandler = _page404;
  }
//handlers - manejadores

  static final Handler _counterhandler =
      Handler(handlerFunc: (context, parameters) {
    print(parameters['base']?[0]);
    return CounterView(
      base: parameters['base']?[0] ?? '5',
    );
  });
  static final Handler _counterhandlerprovider =
      Handler(handlerFunc: (context, parameters) {
    // print(parameters);

    return CounterProviderView(base: parameters['q']?[0] ?? '10');
  });
  static final Handler _dashboardUserHandler =
      Handler(handlerFunc: (context, parameters) {
    // print(parameters);
    print(parameters);
    return View404();
  });
  static final Handler _page404 = Handler(
    handlerFunc: (_, __) => const View404(),
  );
}
