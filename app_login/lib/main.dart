import 'package:flutter/material.dart';
import 'package:app_login/inicio_de_sesion.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'App login',
       initialRoute: 'sesion',
       routes: {
        'sesion': (context) => const InicioDeSesionPage(),
       },
    );
  }
}
