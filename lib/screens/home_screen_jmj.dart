import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(size: 200),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'signin'); // Navegación a SigninScreen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 13, 179, 19),
              ),
              child: const Text('Sign in'),
            ),
            const SizedBox(height: 20), // Espaciado entre botones
            ElevatedButton(
              onPressed: null, // Deshabilitado
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey, // Fondo gris para indicar que está bloqueado
              ),
              child: const Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
