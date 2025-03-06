import 'package:flutter/material.dart';
import 'package:master/screen/navigation/navigation_dua.dart';
import 'package:master/screen/navigation/navigation_satu.dart';
import 'package:master/screen/navigation/navigation_tiga.dart';

class Navigation extends StatelessWidget {
  final terimaData = TextEditingController();
  Navigation({super.key});

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationSatu(
                      data: 'AzlansajaTV',
                    ),
                  ),
                );
              },
              child: const Text('Navigation 1'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationDua(),
                  ),
                );

                (result != null)
                    ? terimaData.text = result
                    : terimaData.clear();
              },
              child: const Text('Navigation 2'),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                readOnly: true,
                controller: terimaData,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Terima Data',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.check,
                  ),
                  helperText: "Datanya apa ya?",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationTiga(),
                  ),
                );
              },
              child: const Text('Navigation 3'),
            ),
          ],
        ),
      ),
    );
  }
}
