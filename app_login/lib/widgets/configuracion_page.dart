import 'package:flutter/material.dart';

class ConfiguracionPage extends StatelessWidget {
  const ConfiguracionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.06), // here the desired height
          child: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text('Configuracion'),
          ),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        
      padding: const EdgeInsets.all(15),
            child: SizedBox(
            width: MediaQuery.of(context).size.width,
                child :   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      const Row(
                        children: [
                          Text('Tu cuenta esta protegida',
                          style: TextStyle(fontSize: 17,
                          color: Colors.black
                          ),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                         Row(
                          children: [
                           const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('La verificacion de seguridad reviso',
                                style: TextStyle(fontSize:14, color: Color.fromARGB(255, 47, 45, 49) ),
                                ),
                                Text('tu cuenta y no encontro acciones',
                                style: TextStyle(fontSize:14, color: Color.fromARGB(255, 47, 45, 49) ),
                                ),
                                 Text('recomendadas.',
                                style: TextStyle(fontSize:14, color: Color.fromARGB(255, 47, 45, 49) ),
                                ),
                                Padding(padding: EdgeInsets.all(14)),
                                  Text('Ver detalles',
                                style: TextStyle(fontSize:14, color: Color.fromARGB(255, 17, 41, 174) ),
                                ),
                              ],
                            ),
                             Transform.translate(
                              offset: const Offset(63, -45), 
                              child:const Icon(
                                Icons.shield_rounded,
                                 size: 80, 
                                 color: Color.fromARGB(255, 2, 114, 1), 
                                 )
                                )
                             ],
                        ),
                        const Padding(padding: EdgeInsets.all(10)),

                        const Divider(),
                        const Padding(padding: EdgeInsets.all(8)),

                        Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      const Row(
                        children: [
                          Text('Verificacion de privacidad',
                          style: TextStyle(fontSize: 17,
                          color: Colors.black
                          ),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                         Row(
                          children: [
                           const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Elige la configuracion de privacidad',
                                style: TextStyle(fontSize:14, color: Color.fromARGB(255, 47, 45, 49) ),
                                ),
                                Text('indicada para ti con esta guia paso a paso.',
                                style: TextStyle(fontSize:14, color: Color.fromARGB(255, 47, 45, 49) ),
                                ),
                                
                                Padding(padding: EdgeInsets.all(25)),
                                  Text('Realizar la Verificacion de privacidad ',
                                style: TextStyle(fontSize:14, color: Color.fromARGB(255, 17, 41, 174) ),
                                ),
                              ],
                            ),
                             Transform.translate(
                              offset: const Offset(15, -45), 
                              child: const Icon(
                                Icons.shield_rounded, 
                                size: 80, 
                                color: Color.fromARGB(255, 59, 68, 187), 
                                )
                              ),                  
                              ],
                        ),
                        const Padding(padding: EdgeInsets.all(10)),

                        const Divider()
                  ],
                      ),
                        Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       const Row(
                        children: [
                          Text('Funciones Disponibles',
                          style: TextStyle(fontSize: 17,
                          color: Colors.black
                          ),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                         Row(
                          children: [
                            IconButton(
                                     icon : const Icon(Icons.email),
                                     onPressed: () {},
                                       ),
                            const Text(' Cambiar correo',
                            style: TextStyle(fontSize: 15, color: Colors.black87),
                            ),
                            const SizedBox(width: 150,),
                            IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('registro');                                                 

                                    }, 
                                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                                    iconSize: 15,
                                    ),
                          ],
                        ),
                         Row(
                          children: [
                            IconButton(
                                     icon : const Icon(Icons.password),
                             onPressed: () {},
                            ),
                            const Text(' Cambiar password',
                            style: TextStyle(
                              fontSize: 15, 
                              color: Colors.black87
                              ),
                            ),
                            const  SizedBox(width: 131,),
                            IconButton(
                                    onPressed: () {
                                    Navigator.of(context).pushNamed('registro');                                                 

                                    }, 
                                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                             iconSize: 15,
                            ),
                           ],
                          ),
                         Row(
                          children: [
                            IconButton(
                                     icon : const Icon(Icons.announcement_outlined),
                                     onPressed: () {},
                                       ),
                            const Text(' Enviar comentarios',
                            style: TextStyle(fontSize: 15, color: Colors.black87),
                            ),
                           const SizedBox(width: 129,),
                           IconButton(
                                    onPressed: () {}, 
                                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                              iconSize: 15,
                             ),
                           ],
                          ),
                         const Padding(padding: EdgeInsets.all(10)),
                        const Divider(),
                        const Padding(padding: EdgeInsets.all(3)),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 300,
                              child: FloatingActionButton(
                                onPressed: (){
                                Navigator.of(context).popAndPushNamed('sesion');                                                 

                                },
                                backgroundColor: Colors.red,
                                child:const Text('Cerrar sesion',
                                style: TextStyle(
                                  color: Colors.black,
                            fontSize: 20,
                          ),
                         )
                       ),
                     )
                   ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
