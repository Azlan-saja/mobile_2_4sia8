import 'package:flutter/material.dart';

class NavigationDua extends StatelessWidget {
  const NavigationDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Yeyee.. Data ditangkap.');
          },
          child: const Text('Selesai'),
        ),
      ),
    );
  }
}
