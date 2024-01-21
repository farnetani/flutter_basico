import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_iniciante/pages/pageViews/one_page.dart';
import 'package:flutter_iniciante/pages/pageViews/perfil_page.dart';
import 'package:flutter_iniciante/pages/pageViews/configuracoes_page.dart';

// ignore_for_file: must_be_immutable

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int pageSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          foregroundColor: Colors.black87,
          backgroundColor: Colors.green[300],
        ),
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: const [
            OnePage(),
            PerfilPage(),
            ConfiguracoesPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple[900],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          currentIndex: pageSelected,
          onTap: (int page) {
            setState(() {
              pageSelected = page;
            });

            _pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
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
