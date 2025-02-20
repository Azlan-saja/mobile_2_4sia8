import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Navigation 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Navigation 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Navigation 3'),
            ),
          ],
        ),
      ),
    );
  }
}
