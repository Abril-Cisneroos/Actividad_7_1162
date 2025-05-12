import 'package:flutter/material.dart';

class Widget023 extends StatelessWidget {
  const Widget023({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla cuatro"), // Center no es necesario aquí
        backgroundColor: const Color(0xff75a8fe),
      ),
      body: Padding(
        // Añadido Padding para mejor espaciado
        padding: const EdgeInsets.all(16.0),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text.isEmpty) {
              return const Iterable<String>.empty();
            }
            return listItems.where((String item) => item
                .toLowerCase()
                .contains(textEditingValue.text.toLowerCase()));
          },
          onSelected: (String item) {
            debugPrint('The $item was selected'); // Cambiado a debugPrint
          },
        ),
      ),
    );
  }
}
