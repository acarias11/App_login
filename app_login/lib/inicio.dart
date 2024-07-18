import 'package:flutter/material.dart';


class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
    int currentIndex=0;
    final controller = PageController();


  @override
  Widget build(BuildContext context) {
   // final usuario = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        onPageChanged: (index){
          currentIndex+ index;
          setState(() {});
        },
        children: [
          HomeMenuPage(),
          PerfilPage(),
          ConfiguracionPage()
        ],
      ),

      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        currentIndex: currentIndex,
        onTap: (index){
          currentIndex=index;

          controller.jumpToPage(index);          
          
          setState(() {});


        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'inicio',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'perfil',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'configuracion',
            )
        ],
        ),
    );
  }
}

class PerfilPage extends StatelessWidget {
  const PerfilPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: const Center(
        child: Text(
          'Perfil',
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
           ),
        ),
      ),
    );
  }
}

class ConfiguracionPage extends StatelessWidget {
  const ConfiguracionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(30.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text('Configuracion'),
          ),
      ),
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
                                Navigator.of(context).pushNamed('sesion');                                                 

                                },
                                backgroundColor: Colors.red,
                                child: Text('Cerrar sesion',
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

class HomeMenuPage extends StatelessWidget {
  const HomeMenuPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.blueGrey,
          ),
      ),
        body: SingleChildScrollView(
             
      padding: const EdgeInsets.all(15),
            child: SizedBox(
            width: MediaQuery.of(context).size.width,
                child :   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       Row(
                        children: [
                              const Icon(
                                Icons.account_circle_outlined,
                                 size: 50, 
                                 color: Color.fromARGB(255, 2, 114, 1), 
                                 ),
                            SizedBox(
                              width: 250,
                              child: OutlinedButton(
                                onPressed: (){},
                              child: Text('Que estas pensando? ')
                              ),
                            ),
                            Icon(
                              Icons.photo_album_outlined,
                              size: 50,
                              color: Colors.blueGrey,
                              ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                         SizedBox(
                           child: Row(
                            children: [
                              SizedBox(
                                height: 180,
                                width: 100,
                                child: OutlinedButton(
                                  
                                  onPressed: (){}, 
                                  
                                child: 
                                Text('Crear historia'),
                                 style:  ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                ),
                              ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                                 SizedBox(
                                height: 180,
                                width: 100,
                                child: OutlinedButton(
                                  
                                  onPressed: (){}, 
                                  
                                child: 
                                Text('Crear historia'),
                                 style:  ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                ),
                              ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                                 SizedBox(
                                height: 180,
                                width: 100,
                                child: OutlinedButton(
                                  
                                  onPressed: (){}, 
                                  
                                child: 
                                Text('Crear historia'),
                                 style:  ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                ),
                              ),
                              ),
                               ],
                                                   ),
                         ),
                        const Padding(padding: EdgeInsets.all(10)),

                        const Divider(),
                        const Padding(padding: EdgeInsets.all(8)),

                      const  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Row(
                        children: [
                            Icon(
                                Icons.account_circle_outlined,
                                 size: 40, 
                                 color: Color.fromARGB(255, 2, 114, 1), 
                                 ),
                          Text('Honduran mood',
                          style: TextStyle(fontSize: 17,
                          fontStyle: FontStyle.italic,
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
                                 Image(
                           image: AssetImage('assets/images/imagen_random.jpg'),
                           height: 220,
                           width: 350,
                           fit: BoxFit.cover,
                         )
                              ],
                            ),
                                              
                              ],
                        ),
                        const Divider(),
                         Row(
                          children: [
                            IconButton(
                                     icon : Icon(Icons.thumb_up),
                                     onPressed: null,
                                       ),
                            const Text('Me gusta',
                            style: TextStyle(fontSize: 15, color: Colors.black87),
                            ),
                            const SizedBox(width: 8,),
                            IconButton(
                                    onPressed: null, 
                                    icon: const Icon(Icons.comment_rounded),
                                    iconSize: 25,
                                    ),
                            const Text('Comentar',
                            style: TextStyle(fontSize: 15, color: Colors.black87),
                           ),
                           const SizedBox(width: 8,),
                            IconButton(
                                    onPressed: null, 
                                    icon: const Icon(Icons.share),
                                    iconSize: 25,
                                    ),
                            const Text('Compartir',
                            style: TextStyle(fontSize: 15, color: Colors.black87),
                           )
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(3)),

                        const Divider()
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
    