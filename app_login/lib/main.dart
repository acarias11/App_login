import 'package:app_login/registro_page.dart';
import 'package:flutter/material.dart';
import 'package:app_login/inicio_de_sesion.dart';
import 'package:app_login/inicio.dart';

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
       initialRoute: 'inicio',
       routes: {
        'sesion': (context) => InicioDeSesionPage(),
        'registro':(context) => RegistroPage(),
        'inicio': (context)=> InicioPage()
       },
        onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.error,
                    size: 100,
                  ),
                  Text(
                    'La ruta " ${settings.name} " no existe',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
