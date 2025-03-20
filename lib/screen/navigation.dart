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
              child: const Text('Kirim Data'),
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
              child: const Text('Terima Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                readOnly: true,
                controller: terimaData,
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: 'Terima Data',
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.purpleAccent.shade400),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                  labelStyle: const TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: const Icon(
                    Icons.check,
                  ),
                  helperText: "Datanya apa ya?",
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                keyboardType: TextInputType.number,
                maxLength: 2,
                decoration: InputDecoration(
                  labelText: 'Nilai 1',
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.purpleAccent.shade400),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                  labelStyle: const TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: const Icon(
                    Icons.check,
                  ),
                  helperText: "Silahkan input nilai 1 sekarang!",
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
              child: const Text('Kirim & Terima Data'),
            ),
          ],
        ),
      ),
    );
  }
}
