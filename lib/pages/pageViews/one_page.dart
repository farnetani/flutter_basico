import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[300],
      child: Column(
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
    );
  }
}
