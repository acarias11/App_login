import 'package:flutter/material.dart';


class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usuario = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text('Hola! ${usuario['correo']}'),
      ),
    );
  }
}