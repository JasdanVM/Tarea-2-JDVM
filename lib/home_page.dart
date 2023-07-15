import 'package:flutter/material.dart';
import 'botones_flotantes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double contador = 10;

  final estilo = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Tarea 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: ', style: estilo),
            const SizedBox(height: 25),
            Text('$contador', style: estilo),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BotonesFlotantes(
        agregar: agregar,
        sustraer: sustraer,
        multiplicar: multiplicar,
        dividir: dividir,
      ),
    );
  }

  void agregar() {
    contador += 2;
    setState(() {});
  }

  void sustraer() {
    contador -= 2;
    setState(() {});
  }

  void multiplicar() {
    contador *= 2;
    setState(() {});
  }

  void dividir() {
    contador /= 2;
    setState(() {});
  }
}
