import 'package:flutter/material.dart';
//import 'package:examen_jmj/screens/pistas_screen.dart'; 
//import 'package:examen_jmj/screens/monitores_screen.dart'; 

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
          ),
          SizedBox(width: 10), // Espaciado entre el texto y el avatar
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.explore),
            title: const Text('Pistas'),
            onTap: () {
              Navigator.pushNamed(context, 'pistas'); // Navega a PistasScreen
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_2),
            title: const Text('Monitores'),
            onTap: () {
              Navigator.pushNamed(context, 'monitores'); // Navega a MonitoresScreen
            },
          ),
          ListTile(
            leading: const Icon(Icons.book_online),
            title: const Text('Reservas'),
            onTap: () {
              _showReservasDialog(context); // Muestra el AlertDialog
            },
          ),
        ],
      ),
    );
  }

  // Método para mostrar el AlertDialog
  void _showReservasDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Aviso'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('El sistema de reservas está deshabilitado en estos momentos.'),
              SizedBox(height: 10),
              FlutterLogo(size: 50),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el diálogo
              },
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }
}
