import 'package:flutter/material.dart';

class ConfiguracoesPage extends StatelessWidget {
  const ConfiguracoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[300],
      child: const Center(
        child: Text(
          'Configurações',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
