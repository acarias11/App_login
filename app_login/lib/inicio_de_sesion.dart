import 'package:flutter/material.dart';
import 'package:app_login/widgets/custom_inputs.dart';
import 'package:app_login/widgets/password_input.dart';

class InicioDeSesionPage extends StatelessWidget {
   InicioDeSesionPage({super.key});
  
  final correocontroller = TextEditingController();
  final contracontroller = TextEditingController();
  final GlobalKey<FormState> fkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Inicio de sesion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Form(
          key: fkey,
           child: Column(
            children: [
              CustomInputs(
                length: 20,
                nombrelabel: 'Correo',
                hint: 'Ingrese su correo',
                teclado: TextInputType.emailAddress,
                controller: correocontroller, 
                icono: Icons.email,
                validator: null
               ),
               
               PasswordInput(
                nombrelabel: 'Pssword',
                hint: 'Ingrese su contrasenia',
                controller: contracontroller, 
                validator: null, 
                )
            ],
           )
        ),
      ),
    );
  }
}
