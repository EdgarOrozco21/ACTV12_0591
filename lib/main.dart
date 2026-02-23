import 'package:flutter/material.dart';
import 'paginas/pagina1.dart';
import 'paginas/pagina2.dart';
import 'paginas/pagina3.dart';

void main() {
  runApp(const MiAppFinancieraPro());
}

class MiAppFinancieraPro extends StatelessWidget {
  const MiAppFinancieraPro({super.key});

  // Definimos la paleta de colores profesional aquí
  static const Color primaryBlue = Color(0xFF0A2342); // Azul corporativo profundo
  static const Color accentGold = Color(0xFFFFD700); // Dorado para acciones
  static const Color successGreen = Color(0xFF00C853); // Verde éxito vibrante
  static const Color backgroundLight = Color(0xFFF5F7FA); // Fondo gris muy claro
  static const Color textDark = Color(0xFF263238); // Texto principal casi negro

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Finanzas Pro',
      // Tema global para una apariencia consistente
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundLight,
        primaryColor: primaryBlue,
        fontFamily: 'Roboto', // Usamos una fuente limpia (si está disponible)
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryBlue,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryBlue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            elevation: 4,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Pagina1(),
        '/pagina2': (context) => const Pagina2(),
        '/pagina3': (context) => const Pagina3(),
      },
    );
  }
}