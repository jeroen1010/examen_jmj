import 'package:flutter/material.dart';
import 'package:examen_jmj/widgets/custom_text_form_field_jmj.dart'; // Ajusta este import a la ruta de tu proyecto.

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'username': '',
      'contraseña': '',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              const FlutterLogo(size: 100),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Usuario',
                labelText: 'Usuario',
                helperText: 'Debe tener al menos 6 caracteres',
                suffixIcon: Icons.person,
                keyboardType: TextInputType.text,
                obscureText: false,
                formProperty: 'username',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                helperText: 'Debe tener al menos 6 caracteres',
                suffixIcon: Icons.lock,
                keyboardType: TextInputType.text,
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no válido');
                    return;
                  }
                  print('Usuario: ${formValues['username']}');
                  print('Contraseña: ${formValues['password']}');
                  Navigator.pushNamed(context, 'listview'); // Navega a la pantalla ListviewScreen.
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Sign In')),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'home'); // Regresa a la pantalla HomeScreen.
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}
