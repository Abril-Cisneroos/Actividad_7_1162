import 'package:flutter/material.dart';

class Widget016 extends StatefulWidget {
  const Widget016({Key? key}) : super(key: key);

  @override
  Widget016State createState() => Widget016State();
}

class Widget016State extends State<Widget016> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Pantalla tres"), // Eliminé Center redundante (AppBar ya centra por defecto)
        backgroundColor: const Color(0xff75a8fe),
      ),
      body: Center(
        // Widget Center adicional para garantizar centrado completo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize
              .min, // Para que la Column ocupe solo el espacio necesario
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => setState(() => _isFlat = !_isFlat),
              child: const Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
