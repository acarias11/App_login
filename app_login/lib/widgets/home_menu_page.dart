import 'package:flutter/material.dart';

class HomeMenuPage extends StatelessWidget {
  const HomeMenuPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final usuario = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.06), // here the desired height
          child: AppBar(
            backgroundColor: Colors.blueGrey,
          ),
      ),
drawer: Drawer(
        child: ListView(
          children:   [
             DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        const CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage(
                        'https://miro.medium.com/v2/resize:fit:720/format:webp/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
                  ),
                  
                    Text('inicio: ${usuario['user']}')
                ],
              ),
              
            ),
             const Image(
                             image: AssetImage('assets/images/imagen_random_5.jpg'),
                             height: 700,
                             width: 100,
                             fit: BoxFit.fill,
                           ),
          ],
        ),
      ),        body: SingleChildScrollView(  
          padding: const EdgeInsets.all(1),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       Row(
                        children: [
                              const  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://miro.medium.com/v2/resize:fit:720/format:webp/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
                  ),
                            SizedBox(
                              width: 250,
                              child: OutlinedButton(
                                onPressed: (){},
                              child: const Text('Que estas pensando? ')
                              ),
                            ),
                           const Icon(
                              Icons.photo_album_outlined,
                              size: 50,
                              color: Colors.blueGrey,
                              ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                      
                         SizedBox(
                          child: Padding(
                             padding: const EdgeInsets.fromLTRB(15.0,1,1,1),
                             child: Row(
                              
                              children: [
                                SizedBox(
                                  height: 180,
                                  width: 100,
                                  child: OutlinedButton(
                                    
                                    onPressed: (){}, 
                                    
                                    style: ButtonStyle(shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                  ),
                                  child:const Text('Crear historia'),
                                  
                                   
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
                                     style:  ButtonStyle(shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                  ),
                                  child: const Text('Crear historia'),
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
                                  style:  ButtonStyle(shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                                  ),
                                  child: const Text('Crear historia'),
                                 ),
                                ),
                                 ],
                                                     ),
                           ),
                         ),
                        const Padding(padding: EdgeInsets.all(10)),
                        const Divider(),
                        const Padding(padding: EdgeInsets.all(1)),

                       const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Padding(
                             padding: EdgeInsets.fromLTRB(15.0,1,1,1),
                          child: Row(
                          children: [
                                CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://miro.medium.com/v2/resize:fit:720/format:webp/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
                  ),
                            Text('Honduran mood',
                            style: TextStyle(fontSize: 17,
                            fontStyle: FontStyle.italic,
                            color: Colors.black
                            ),
                            ),
                             
                          ],
                                                ),
                        ),
                       Padding(padding: EdgeInsets.all(3)),
                      
                         Padding(
                             padding: EdgeInsets.fromLTRB(15.0,1,1,1),
                           child: Row(
                            children: [
                              Column(
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
                         ),
                          Divider(),
                         Reacciones(),
                       Padding(padding: EdgeInsets.all(3)),

                         Divider(),
                            Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Padding(
                             padding: EdgeInsets.fromLTRB(15.0,1,1,1),
                          child: Row(
                          children: [
                               CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://miro.medium.com/v2/resize:fit:720/format:webp/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
                  ),
                            Text('X-memes',
                            style: TextStyle(fontSize: 17,
                            fontStyle: FontStyle.italic,
                            color: Colors.black
                            ),
                            ),
                             
                          ],
                                                ),
                        ),
                       Padding(padding: EdgeInsets.all(3)),
                      
                         Padding(
                             padding:  EdgeInsets.fromLTRB(15.0,1,1,1),
                           child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Image(
                             image: AssetImage('assets/images/imagen_random_3.jpg'),
                             height: 400,
                             width: 350,
                             fit: BoxFit.fill,
                           )
                                ],
                              ),                
                                ],
                                                   ),
                         ),
                         Divider(),
                         Reacciones(),
                        Padding(padding: EdgeInsets.all(3)),

                         Divider(),
                            Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Padding(
                             padding: EdgeInsets.fromLTRB(15.0,1,1,1),
                          child: Row(
                          children: [
                               const  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://miro.medium.com/v2/resize:fit:720/format:webp/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),
                  ),
                            Text('Los gallos de Juan',
                            style: TextStyle(fontSize: 17,
                            fontStyle: FontStyle.italic,
                            color: Colors.black
                            ),
                            ),
                             
                          ],
                                                ),
                        ),
                       Padding(padding: EdgeInsets.all(3)),
                      
                         Padding(
                             padding:  EdgeInsets.fromLTRB(15.0,1,1,1),
                           child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Image(
                             image: AssetImage('assets/images/Imagen_random_4.jpg'),
                             height: 500,
                             width: 350,
                             fit: BoxFit.fill,
                           )
                                ],
                              ),
                                                
                                ],
                                                   ),
                         ),
                         Divider(),
                         Reacciones(),
                        Padding(padding: EdgeInsets.all(3)),

                         Divider()
                         
                        
                ],
              ),
                         
                        
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

class Reacciones extends StatelessWidget {
  const Reacciones({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       IconButton(
                icon :const Icon(Icons.thumb_up),
                onPressed: (){},
                  ),
       const  Text('Me gusta',
       style: TextStyle(fontSize: 15, color: Colors.black87),
       ),
       const SizedBox(width: 8,),
       IconButton(
               onPressed: (){}, 
               icon: const Icon(Icons.comment_rounded),
               iconSize: 25,
               ),
       const Text('Comentar',
       style: TextStyle(fontSize: 15, color: Colors.black87),
      ),
       const SizedBox(width: 8,),
       IconButton(
               onPressed: (){}, 
               icon: const Icon(Icons.share),
               iconSize: 25,
               ),
       const Text('Compartir',
       style: TextStyle(fontSize: 15, color: Colors.black87),
      )
     ],
                            );
  }
}
    