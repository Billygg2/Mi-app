import 'package:flutter/material.dart';
import 'package:miapp/src/pages/Home-billy.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Color.fromARGB(255, 58, 34, 195),
      ),
      body: const Center(
        child: Card(
          elevation: 4, 
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Sesión exitosa',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Billy Salmerón"),
              accountEmail: Text("bjp.salmeron@yavirac.edu.ec"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/perf.jpg"),
              ),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            ListTile(
              leading:
                  Icon(Icons.home, color: Color.fromARGB(255, 193, 159, 26)),
              title: Text("Home",
                  style: TextStyle(color: Color.fromARGB(255, 177, 151, 18))),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart,
                  color: Color.fromARGB(255, 48, 167, 8)),
              title: Text("Carrito", style: TextStyle(color: Colors.green)),
              onTap: () {
              },
            ),
            ListTile(
              leading:
                  Icon(Icons.favorite, color: Color.fromARGB(255, 167, 27, 8)),
              title: Text("Favoritos",
                  style: TextStyle(color: Color.fromARGB(255, 151, 36, 36))),
              onTap: () {
              },
            ),
            Divider(), 
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configuración",
                  style: TextStyle(color: Color.fromARGB(255, 156, 104, 31))),
              onTap: () {
              },
            ),
            ListTile(
              leading:
                  Icon(Icons.logout, color: Color.fromARGB(255, 62, 19, 136)),
              title: Text("Cerrar sesión",
                  style: TextStyle(color: Color.fromARGB(255, 156, 104, 31))),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
