import 'package:flutter/material.dart';

class Widget030 extends StatelessWidget {
  const Widget030({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla cinco")), // Título centrado
        backgroundColor: const Color(0xff75a8fe), // Color de la barra
      ),
      body: myWidget(),
    );
  }
}

myWidget() => Builder(
      builder: (BuildContext context) {
        return Text(
          'Text with Theme',
          style: Theme.of(context).textTheme.displayLarge,
        );
      },
    );
