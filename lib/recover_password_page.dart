import 'package:flutter/material.dart';

class RecoverPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperar Contraseña'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Correo Electrónico',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, ingresa tu correo electrónico';
                }
                // Puedes agregar más validaciones de correo electrónico aquí si es necesario
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para enviar el correo de recuperación de contraseña
                String email = _emailController.text;
                print('Correo electrónico enviado a: $email');
                // Puedes agregar aquí la lógica para enviar el correo de recuperación de contraseña
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
