import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[300],
      child: const Center(
        child: Text(
          'Perfil',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
