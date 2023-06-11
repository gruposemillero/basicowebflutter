import 'package:flutter/material.dart';
import 'package:backend_dashboard_flutter/ui/shared/custom_button.dart';

class CounterView extends StatefulWidget {
  final String base;
  const CounterView({required this.base, super.key});
  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int contador = 10;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    if (int.tryParse(widget.base) != null) {
      contador = int.parse(widget.base);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Stateful Counter"),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contador: $contador',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return (constraints.maxWidth > 520)
                ? Row(
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
                  )
                : Column(
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
                  );
          },
        ),
        Spacer(),
      ],
    );
  }
}
