import 'dart:developer';
import 'pageViews/produtos_page.dart';
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
  accountName() => const Text('Arlei F. Farnetani Junior');
  accountEmail() => const Text('farnetani@gmail.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Farsoft Suporte'),
          foregroundColor: Colors.black87,
          backgroundColor: Colors.green[300],
        ),
        drawer: Container(
          width: 250,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: accountName(),
                  accountEmail: accountEmail(),
                  currentAccountPicture: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      'A',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    log('Home');
                    Navigator.pop(context);
                    setState(() {
                      pageSelected = 0;
                      _pageController.animateToPage(
                        pageSelected,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_bag_outlined),
                  title: const Text('Produtos'),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    log('Perfil');
                    Navigator.pop(context);
                    setState(() {
                      pageSelected = 3;
                      _pageController.animateToPage(
                        pageSelected,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text('Carrinho de Compras'),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    log('Perfil');
                    Navigator.pop(context);
                    setState(() {
                      pageSelected = 1;
                      _pageController.animateToPage(
                        pageSelected,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Perfil'),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    log('Perfil');
                    Navigator.pop(context);
                    setState(() {
                      pageSelected = 1;
                      _pageController.animateToPage(
                        pageSelected,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Configurações'),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    log('Configurações');
                    Navigator.pop(context);
                    setState(() {
                      pageSelected = 2;
                      _pageController.animateToPage(
                        pageSelected,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: const [
            OnePage(),
            PerfilPage(),
            ConfiguracoesPage(),
            ProdutosPage(),
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
