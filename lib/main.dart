import 'package:flutter/material.dart';
import 'formulario_register.dart'; // Importa el formulario de registro
import 'login_page.dart';
import 'recover_password_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Registro'),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterForm()),
                );
              },
            ),
            ListTile(
              title: Text('Recuperar Contraseña'),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          RecoverPasswordPage()), // Utiliza el constructor de RecoverPasswordPage
                );
              },
            ),
          ],
        ),
      ),
      body: LoginPage(), // Página de inicio de sesión como vista principal
    );
  }
}
