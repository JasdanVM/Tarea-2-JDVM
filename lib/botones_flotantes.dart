import 'package:flutter/material.dart';

class BotonesFlotantes extends StatelessWidget {
  final VoidCallback agregar;
  final VoidCallback sustraer;
  final VoidCallback multiplicar;
  final VoidCallback dividir;
  const BotonesFlotantes({
    super.key,
    required this.agregar,
    required this.sustraer,
    required this.multiplicar,
    required this.dividir,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.green[600],
          onPressed: agregar,
          child: const Icon(Icons.exposure_plus_2),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          backgroundColor: Colors.green[600],
          onPressed: sustraer,
          child: const Icon(Icons.exposure_minus_2),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          backgroundColor: Colors.green[600],
          onPressed: multiplicar,
          child: const Icon(Icons.close),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          backgroundColor: Colors.green[600],
          onPressed: dividir,
          child: const Icon(Icons.code_off),
        ),
      ],
    );
  }
}
