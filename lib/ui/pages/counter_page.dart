import 'package:flutter/material.dart';
import 'package:backend_dashboard_flutter/ui/shared/custom_app_menu.dart';
import 'package:backend_dashboard_flutter/ui/shared/custom_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          Text("Stateful Counter"),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador: $contador',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                  finalbuton: () {
                    contador++;
                    setState(() {});
                  },
                  nombre: 'Incrementar'),
              CustomFlatButton(
                finalbuton: () {
                  contador = 0;
                  setState(() {});
                },
                nombre: "Reiniciar",
              ),
              CustomFlatButton(
                finalbuton: () {
                  if (contador >= 1) contador--;
                  setState(() {});
                },
                color: Colors.amberAccent,
                nombre: "Disminuir",
              ),
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
