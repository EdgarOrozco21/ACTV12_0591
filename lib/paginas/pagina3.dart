import 'package:flutter/material.dart';
import '../main.dart'; // Importamos para usar los colores definidos

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MiAppFinancieraPro.backgroundLight,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: MiAppFinancieraPro.textDark),
        title: const Text(
          'pagina 3 El Edgar',
          style: TextStyle(color: MiAppFinancieraPro.textDark, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        // ¡AQUÍ ESTÁ LA MAGIA! SingleChildScrollView permite hacer scroll si la pantalla es pequeña
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icono de éxito gigante con sombra verde
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: MiAppFinancieraPro.successGreen.withOpacity(0.3),
                        blurRadius: 40,
                        spreadRadius: 10
                      )
                    ]
                  ),
                  child: const Icon(Icons.check_circle_rounded, color: MiAppFinancieraPro.successGreen, size: 140)
                ),
                
                const SizedBox(height: 30),
                
                Text(
                  '¡Transacción Exitosa!',
                  style: TextStyle(
                    fontSize: 28, 
                    fontWeight: FontWeight.bold, 
                    color: MiAppFinancieraPro.textDark.withOpacity(0.8)
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Tu operación ha sido procesada correctamente.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16, 
                    color: MiAppFinancieraPro.textDark.withOpacity(0.6)
                  ),
                ),

                const SizedBox(height: 40),

                // Tarjeta de resumen de transacción
                Card(
                  elevation: 5,
                  shadowColor: Colors.black12,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Column(
                      children: [
                        _buildTransactionRow(Icons.receipt_long, "Referencia", "#TXN-987654"),
                        const Divider(),
                        _buildTransactionRow(Icons.monetization_on, "Monto", "\$15,240.00"),
                        const Divider(),
                         _buildTransactionRow(Icons.calendar_today, "Fecha", "11/02/2026"),
                      ],
                    ),
                  ),
                ),
                
                const SizedBox(height: 50),

                // Botón "Volver"
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: MiAppFinancieraPro.textDark,
                    side: const BorderSide(color: MiAppFinancieraPro.textDark, width: 1.5),
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    // Vuelve hasta la primera página (la ruta '/')
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                  icon: const Icon(Icons.home_outlined),
                  label: const Text('Volver al Inicio', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Método auxiliar para crear las filas de la tarjeta de resumen
  Widget _buildTransactionRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 20),
          const SizedBox(width: 15),
          Text(label, style: const TextStyle(fontSize: 16, color: Colors.grey)),
          const Spacer(),
          Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: MiAppFinancieraPro.textDark)),
        ],
      ),
    );
  }
}