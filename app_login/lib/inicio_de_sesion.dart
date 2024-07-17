import 'dart:ui';

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
        backgroundColor: Colors.blueGrey,
        title:const Text('Inicio de sesion'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            colors: [  Colors.blueGrey, Colors.white10,] 
            ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Form(
            key: fkey,
             child: Column(
              children: [
                const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           SizedBox(height: 130),
                        Icon(
                          Icons.people,
                        size: 100,
                        )
                 ],
               ),  
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
                  nombrelabel: 'Password',
                  hint: 'Ingrese su contrasenia',
                  controller: contracontroller, 
                  validator: null, 
                  ),
                   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 100),
                          SizedBox(
                            height: 60,
                            width: 300,
                            child: ElevatedButton(
                              onPressed:(){
                              Navigator.of(context).pushNamed('inicio');                                                 

                            }, 
                            child:
                               const Text('Ingresar',
                                   style: TextStyle(
                                   fontSize: 25,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic,
                                   color: Colors.black),
                                   ),
                            ),
                          ),
                 ],
               ),  
                Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 100),
                          SizedBox(
                            height: 60,
                            width: 300,
                            child: ElevatedButton(
                              onPressed:(){
                               Navigator.of(context).pushNamed('registro');                                                 
        
                            }, 
                            child:
                               const Text('Registrarse',
                                   style: TextStyle(
                                   fontSize: 25,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic,
                                   color: Colors.black),
                                   ),
                            ),
                          ),
                 ],
               ),  
              ],
             )
          ),
        ),
      ),
    );
  }
}
