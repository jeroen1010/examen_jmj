import 'package:examen_jmj/routes/app_routes_jmj.dart';
import 'package:flutter/material.dart';
import 'package:examen_jmj/theme/app_theme_jmj.dart';

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
            ElevatedButton(
              onPressed: () {
                //Navigator.pushNamed(context, AppRoutes.signinScreen); // Navegación a SigninScreen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 13, 179, 19), 
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
