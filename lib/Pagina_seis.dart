import 'package:flutter/material.dart';

class Widget038 extends StatelessWidget {
  const Widget038({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla seis")), // Título centrado
        backgroundColor: const Color(0xff75a8fe), // Color de la barra
      ),
      body: CircularProgressIndicator(
        color: Colors.orangeAccent,
        backgroundColor: Colors.blueGrey,
        value: 0.50,
      ),
    );
  }
}
