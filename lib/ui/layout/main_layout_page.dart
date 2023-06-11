import 'package:backend_dashboard_flutter/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;
  const MainLayoutPage({required this.child, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(),
            Expanded(child: child),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
