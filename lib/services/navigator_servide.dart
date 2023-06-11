import 'package:flutter/material.dart';

class NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future navigateTo(String routName) {
    return navigatorKey.currentState!.pushNamed(routName);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}
