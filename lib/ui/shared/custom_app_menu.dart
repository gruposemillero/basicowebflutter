import 'package:backend_dashboard_flutter/services/navigator_servide.dart';
import 'package:flutter/material.dart';
import 'package:backend_dashboard_flutter/ui/shared/custom_button.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // return _TabletDesktopMenu();
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          CustomFlatButton(
            finalbuton: () =>
                locator<NavigatorService>().navigateTo('/stateful'),
            // finalbuton: () => Navigator.pushNamed(context, '/stateful'),
            nombre: "Contador Stateful",
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            // finalbuton: () => Navigator.pushNamed(context, '/provider'), tradicional
            finalbuton: () =>
                locator<NavigatorService>().navigateTo('/provider'),
            nombre: "Contador con Provider",
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            finalbuton: () =>
                locator<NavigatorService>().navigateTo('/prodasdasvider'),
            // finalbuton: () => Navigator.pushNamed(context, '/dassad'),
            nombre: "Otra pagina",
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            finalbuton: () =>
                locator<NavigatorService>().navigateTo('/stateful/100'),
            // finalbuton: () => Navigator.pushNamed(context, '/dassad'),
            nombre: "Stateful 100",
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            finalbuton: () =>
                locator<NavigatorService>().navigateTo('/provider?q=200'),
            // finalbuton: () => Navigator.pushNamed(context, '/dassad'),
            nombre: "Provider 200",
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            finalbuton: () =>
                locator<NavigatorService>().navigateTo('/stateful'),
            // finalbuton: () => Navigator.pushNamed(context, '/stateful'),
            nombre: "Contador Stateful",
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            // finalbuton: () => Navigator.pushNamed(context, '/provider'), tradicional
            finalbuton: () =>
                locator<NavigatorService>().navigateTo('/provider'),
            nombre: "Contador con Provider",
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            finalbuton: () =>
                locator<NavigatorService>().navigateTo('/prodasdasvider'),
            // finalbuton: () => Navigator.pushNamed(context, '/dassad'),
            nombre: "Otra pagina",
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
