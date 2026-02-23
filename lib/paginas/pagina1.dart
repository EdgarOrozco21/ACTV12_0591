import 'package:flutter/material.dart';
import '../main.dart'; 

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_balance_wallet, color: Colors.white), 
        title: const Text('Inicio Edgar 6-J'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: MiAppFinancieraPro.backgroundLight,
          image: DecorationImage(
            image: NetworkImage("https://www.transparenttextures.com/patterns/cubes.png"),
            opacity: 0.1,
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1565C0), Color(0xFF6A1B9A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    )
                  ]
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Icon(Icons.nfc, color: Colors.white.withOpacity(0.8), size: 30),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Icon(Icons.credit_card, color: Colors.white.withOpacity(0.8), size: 30),
                    ),
                    const Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Balance Total',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$15,240.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        'EDGAR ADRIAN',
                        style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
                      ),
                    ),
                     const Positioned(
                      bottom: 20,
                      right: 20,
                      child: Text(
                        '**** 6-J',
                        style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 60),
              
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: MiAppFinancieraPro.accentGold,
                  foregroundColor: MiAppFinancieraPro.textDark,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/pagina2');
                },
                icon: const Icon(Icons.analytics_outlined, size: 28),
                label: const Text(
                  'Ver Análisis de Mercado',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}