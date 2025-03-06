import 'package:flutter/material.dart';

class NavigationSatu extends StatelessWidget {
  final String data;
  const NavigationSatu({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation 1'),
      ),
      body: Center(
        child: Text(
          'Hai kawan. Nama saya $data',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
