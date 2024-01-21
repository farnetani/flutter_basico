import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('home_page.dart'),
          foregroundColor: Colors.black87,
          backgroundColor: Colors.green[300],
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.blue,
                // shape: BoxShape.circle,
                shape: BoxShape.rectangle,
              ),
              child: const Center(
                child: Text(
                  'Olá Mundo!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.purple,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                  width: MediaQuery.of(context).size.width - 200,
                  child: const Center(
                    child: Text(
                      'Container',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações',
            ),
          ],
        ));
  }
}
