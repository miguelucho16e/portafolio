import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../themes/app_theme.dart';
import '../widgets/comment_section.dart';
import '../widgets/section_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final puntosClave = [
      {
        'titulo': 'Leonida y Vice City',
        'desc': 'Mapa inspirado en Florida con ciudad, playas y zonas naturales.',
        'icon': Icons.location_city,
      },
      {
        'titulo': 'Lucía y Jason',
        'desc': 'Historia centrada en ambos personajes y sus golpes.',
        'icon': Icons.people,
      },
      {
        'titulo': 'Mundo abierto',
        'desc': 'Más detalles, NPCs y cosas por hacer en el mapa.',
        'icon': Icons.sports_esports,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('GTA VI'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.developer);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Jason_and_Lucia_01.jpg',
                height: 185,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 12),
              const Text(
                'Grand Theft Auto VI',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Vice City • Leonida',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(height: 18),
              const SectionCard(
                title: '¿Qué es?',
                icon: Icons.videogame_asset,
                content:
                    'La nueva entrega de Grand Theft Auto ambientada en Leonida, donde regresa Vice City con un enfoque moderno y de gran escala.',
              ),
              const SectionCard(
                title: '¿Qué ofrece?',
                icon: Icons.info_outline,
                content:
                    'Exploración en mundo abierto, misiones, narrativa y un entorno variado para recorrer con calma o caos.',
              ),
              Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Puntos destacados',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                      const Divider(),
                      for (var item in puntosClave)
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            backgroundColor: AppTheme.primaryColor.withOpacity(0.12),
                            child: Icon(
                              item['icon'] as IconData,
                              color: AppTheme.primaryColor,
                            ),
                          ),
                          title: Text(item['titulo'] as String),
                          subtitle: Text(item['desc'] as String),
                        ),
                    ],
                  ),
                ),
              ),
              const CommentSection(),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Hecho por Miguel Agelvis - Flutter',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}