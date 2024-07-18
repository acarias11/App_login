import 'package:flutter/material.dart';
import 'package:app_login/widgets/custom_inputs.dart';
import 'package:app_login/widgets/password_input.dart';

class InicioDeSesionPage extends StatelessWidget {
   InicioDeSesionPage({super.key});
  
  final correocontroller = TextEditingController();
  final contracontroller = TextEditingController();
  final GlobalKey<FormState> fkey = GlobalKey<FormState>();

    final String correo1 = 'angel.carias@unah.hn';
    final String correo2 = 'darlan.perdomo@unah.hn';
    final String contra1 = '20222001305';
    final String contra2 = '20222000729';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title:const Text('Inicio de sesion'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
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
                    nombrelabel: 'Correo',
                    hint: 'Ingrese su correo',
                    teclado: TextInputType.emailAddress,
                    controller: correocontroller, 
                    icono: Icons.email,
                    validator: (valor) {
                      if (valor == null || valor.isEmpty) {
                      return 'El correo es obligatorio';
                      }

                      if (((valor == correo1) || (valor == correo2)) == false) {
                        return 'El correo es invalido';
                      }

                      return null;
                    },
                   ),
                  
                  const SizedBox(height: 20,),
        
                   PasswordInput(
                    nombrelabel: 'Password',
                    hint: 'Ingrese su contrasenia',
                    controller: contracontroller, 
                    validator: (valor) {
                      if (valor == null || valor.isEmpty) {
                      return 'La contraseña es obligatoria';
                      }

                      if (((valor == contra1) || (valor == contra2)) == false) {
                        return 'La contraseña es incorrecta';
                      }

                      return null;
                    }, 
                    ),
                    const SizedBox(height: 20,),
                     Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 100),
                            SizedBox(
                              height: 60,
                              width: 300,
                              child: ElevatedButton(
                                onPressed:(){
                                if(!fkey.currentState!.validate()) return;
                                Navigator.of(context).popAndPushNamed('inicio',arguments: {
                                    'correo': correocontroller.text,
                                    'contraseña': contracontroller.text,
                                  });                                                 
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
      ),
    );
  }
}
