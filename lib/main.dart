import 'package:cisneros/Pagina_cinco.dart';
import 'package:cisneros/Pagina_cuatro.dart';
import 'package:cisneros/Pagina_seis.dart';
import 'package:cisneros/Pagina_siete.dart';
import 'package:cisneros/Pagina_tres.dart';
import 'package:cisneros/pagina_dos.dart';
import 'package:cisneros/pagina_uno.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cisneros",
      initialRoute: "/",
      routes: {
        "/": (context) => const Paginauno(),
        '/pantalla dos': (context) => const Widget008(),
        '/Pantalla tres': (context) => const Widget016(),
        '/pantalla cuatro': (context) => const Widget023(),
        '/pantalla cinco': (context) => const Widget030(),
        '/pantalla seis': (context) => const Widget038(),
        '/pantalla siete': (context) => const Widget048(),
      },
    );
  }
}
