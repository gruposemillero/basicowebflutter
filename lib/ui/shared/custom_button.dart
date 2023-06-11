import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final Function finalbuton;
  final String nombre;
  final Color color;
  const CustomFlatButton(
      {super.key,
      required this.finalbuton,
      required this.nombre,
      this.color = Colors.pink});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: color),
      onPressed: () => finalbuton(),
      child: Text(nombre),
    );
  }
}
