import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _primerapagina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 60, 90, 188),
        title: Text('Mi Primera App', style: TextStyle(fontWeight: FontWeight.w400),),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              child: Image.asset(
                "images/img.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Creado por Billy Salmerón',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        },
      child: Icon(Icons.add),
      backgroundColor: Color.fromARGB(255, 128, 62, 227),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _primerapagina = index;
          });
        },
        currentIndex: _primerapagina,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: Color.fromARGB(255, 20, 48, 229)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            backgroundColor: Color.fromARGB(255, 233, 136, 17)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
            backgroundColor: Color.fromARGB(255, 44, 207, 7)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendario',
            backgroundColor: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}