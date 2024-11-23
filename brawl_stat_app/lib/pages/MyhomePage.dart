import 'package:brawl_stat_app/pages/testPage.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int _selectedIndex = 0; // Índice seleccionado para las páginas


  // Lista de las páginas que quieres mostrar
  static const List<Widget> _pages = <Widget>[
    TestPage(title: "Menu Principal", color: Color.fromARGB(255, 168, 71, 36)),
    TestPage(title: "Menu Principal", color: Color.fromARGB(255, 168, 71, 36)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _pages[_selectedIndex], // Mostrar la página seleccionada
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting, // Cambiar el tipo a shifting
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Icons.house_outlined),
            label: 'Casa',
            backgroundColor: Color.fromARGB(255, 168, 71, 36),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.house_outlined),
            label: 'Casa',
            backgroundColor: Color.fromARGB(255, 168, 71, 36),
          ),
          
          
        ],
        currentIndex: _selectedIndex, // Página seleccionada
        selectedItemColor: Colors.black, // Color del ítem seleccionado
        onTap: _onItemTapped, // Cambiar la página al tocar un ítem
      ),
    );
  }
}