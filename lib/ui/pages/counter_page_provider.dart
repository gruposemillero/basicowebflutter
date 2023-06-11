import 'package:backend_dashboard_flutter/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:backend_dashboard_flutter/ui/shared/custom_app_menu.dart';
import 'package:backend_dashboard_flutter/ui/shared/custom_button.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider('5'),
        child: _CounterProviderPageBody()); // tengo acceso a todo
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterprovider =
        Provider.of<CounterProvider>(context); // debo especificar
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          Text("Provider Counter"),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador: ${counterprovider.counter}',
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
                  finalbuton: () => counterprovider.increment(),
                  nombre: 'Incrementar'),
              CustomFlatButton(
                finalbuton: () => counterprovider.reset(),
                nombre: "Reiniciar",
              ),
              CustomFlatButton(
                finalbuton: () => counterprovider.decrement(),
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
