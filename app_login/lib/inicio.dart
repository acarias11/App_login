import 'package:flutter/material.dart';
import 'package:app_login/widgets/configuracion_page.dart';
import 'package:app_login/widgets/home_menu_page.dart';

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
            icon: Icon(Icons.settings),
            label: 'configuracion',
            )
        ],
        ),
    );
  }
}
