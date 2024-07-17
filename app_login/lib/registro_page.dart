import 'package:app_login/widgets/custom_inputs.dart';
import 'package:app_login/widgets/password_input.dart';
import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  RegistroPage({super.key});

  final nombreController = TextEditingController();
  final correoController = TextEditingController();
  final telefonoController = TextEditingController();
  final contraseniaController = TextEditingController();
  final confirmcontraController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              CustomInputs(
                controller: nombreController, 
                validator: (valor) {
                  return null;
                }, 
                teclado: TextInputType.text, 
                length: 20,  
                nombrelabel: 'Nombre',
                hint: 'Ingrese su Nombre', 
                icono: Icons.person
                ),
                CustomInputs(
                  controller: correoController, 
                  validator: (valor) {
                  return null;
                  }, 
                  teclado: TextInputType.emailAddress, 
                  length: 20,  
                  nombrelabel: 'Correo',
                  hint: 'Ingrese su correo', 
                  icono: Icons.email
                ),
                CustomInputs(
                  controller: telefonoController, 
                  validator: (valor) {
                  return null;
                  }, 
                  teclado: TextInputType.phone, 
                  length: 8,  
                  nombrelabel: 'Telefono',
                  hint: 'Ingrese su telefono', 
                  icono: Icons.phone
                ),
                PasswordInput(
                  nombrelabel: 'Contraseña',
                  hint: 'Ingrese su contraseña', 
                  controller: contraseniaController,
                  validator: (valor) {
                  return null;
                },
                ),
                PasswordInput(
                  nombrelabel: 'Confirmar Contraseña', 
                  hint: 'Confrima tu Contraseña', 
                  controller: confirmcontraController, 
                  validator: (valor) {
                  return null;
                },
                ),  
            ],
          ),
          ),
        )
    );
  }
}