import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desarrollador'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.code,
                    size: 56,
                    color: AppTheme.primaryColor,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Miguel Agelvis',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'C.I: 32.475.420',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const Divider(height: 28),
                  const ListTile(
                    leading: Icon(Icons.school, color: AppTheme.accentColor),
                    title: Text('Estudiante de Ingeniería'),
                    subtitle: Text('Desarrollo Móvil con Flutter'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.email, color: AppTheme.accentColor),
                    title: Text('Contacto'),
                    subtitle: Text('magelvis.5420@unimar.edu.ve'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.link, color: AppTheme.accentColor),
                    title: Text('GitHub'),
                    subtitle: Text('github.com/miguelucho16e'),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryColor,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Regresar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}