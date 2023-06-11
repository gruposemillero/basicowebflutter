import 'package:flutter/material.dart';
import 'package:backend_dashboard_flutter/ui/shared/custom_button.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "404",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          // ignore: prefer_const_constructors
          Text(
            "No se encontro la pagina",
            style: const TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          CustomFlatButton(
              finalbuton: () {
                Navigator.pushNamed(context, '/stateful');
              },
              nombre: "Regresar")
        ],
      )),
    );
  }
}
