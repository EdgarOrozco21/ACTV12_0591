import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Extendemos el cuerpo detrás del AppBar para un efecto inmersivo
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // AppBar transparente
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Segunda página 6-J',
          style: TextStyle(color: Color(0xFFEF5350), fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none, color: Colors.white))
        ],
      ),
      body: Container(
        // Fondo degradado oscuro elegante
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF121212), Color(0xFF2C3E50)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80), // Espacio para el AppBar transparente
                
                // Título de la sección
                const Text("Análisis Bursátil", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300)),
                const SizedBox(height: 30),
          
                // --- IMAGEN DE GITHUB ENMARCADA ---
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // Sombra tipo resplandor (glow)
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFEF5350).withOpacity(0.4), // Resplandor rojo por el tema
                        blurRadius: 30,
                        spreadRadius: 2,
                      )
                    ]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        // La imagen de GitHub que pediste mantener
                        Image.network(
                          'https://raw.githubusercontent.com/EdgarOrozco21/imagenes-para-flutter-6-j-11-02-26/refs/heads/main/finan1.jpg',
                          width: 350,
                          height: 220,
                          fit: BoxFit.cover,
                          // Añadimos un indicador de carga por si el internet es lento
                          loadingBuilder: (context, child, loadingProgress) {
                           if (loadingProgress == null) return child;
                            return Container(
                              width: 350, height: 220,
                              color: Colors.grey[900],
                              child: const Center(child: CircularProgressIndicator(color: Colors.redAccent)),
                            );
                          },
                        ),
                        // Un pequeño banner en la parte inferior de la imagen
                        Container(
                          width: 350,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter
                            )
                          ),
                          child: const Text(
                            "Tendencia Actual: Bajista",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // --- FIN IMAGEN ---
                
                const SizedBox(height: 20),
                // Datos ficticios para que se vea profesional
                const Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     _IndicadorMercado(icon: Icons.trending_down, color: Colors.redAccent, text: "-1.2%"),
                     _IndicadorMercado(icon: Icons.stacked_line_chart, color: Colors.blueAccent, text: "Vol: Alto"),
                   ],
                ),

                const SizedBox(height: 50),
                
                // Botón para avanzar mejorado
                ElevatedButton.icon(
                  // Hereda el estilo del main.dart, pero podemos añadir cosas específicas
                  icon: const Icon(Icons.check_circle_outline),
                  label: const Text('Confirmar y Avanzar', style: TextStyle(fontSize: 18)),
                   onPressed: () {
                    Navigator.pushNamed(context, '/pagina3');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget auxiliar pequeño para los indicadores debajo de la imagen
class _IndicadorMercado extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _IndicadorMercado({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}