import 'package:flutter/material.dart';

class StateManajemen extends StatelessWidget {
  const StateManajemen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Layar State Manajemen")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('-1')),
            const Text('0', style: TextStyle(fontSize: 38)),
            ElevatedButton(onPressed: () {}, child: const Text('+1')),
          ],
        ),
      ),
    );
  }
}
