import 'package:flutter/material.dart';
import 'package:app_login/widgets/custom_inputs.dart';
import 'package:app_login/widgets/password_input.dart';
import 'package:flutter/widgets.dart';

class InicioDeSesionPage extends StatelessWidget {
   InicioDeSesionPage({super.key});
  
  final correocontroller = TextEditingController();
  final contracontroller = TextEditingController();
  final GlobalKey<FormState> fkey = GlobalKey<FormState>();

    final String correo1 = 'aacarias@unah.hn';
    final String correo2 = 'darlan.perdomo@unah.hn';
    final Map ContraCorreos = {
      'aacarias@unah.hn': '20222001305',
      'darlan.perdomo@unah.hn': '20222000729'
    };

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
                  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             SizedBox(height: 130),
                          Image(
                             image: AssetImage('assets/images/logo.gif'),
                             height: 300,
                             width: 200,
                             fit: BoxFit.cover,
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

                      if ((valor == 'aacarias@unah.hn' || valor == 'darlan.perdomo@unah.hn') == false) {
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

                      if (((valor == ContraCorreos['aacarias@unah.hn'] || valor == ContraCorreos['darlan.perdomo@unah.hn'])) == false) {
                        return 'La contraseña es incorrecta';
                      }

                      if (!ContraCorreos.containsKey(correocontroller.text) || valor != ContraCorreos[correocontroller.text]) {
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
