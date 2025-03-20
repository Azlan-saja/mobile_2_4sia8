import 'package:flutter/material.dart';

class NavigationTiga extends StatelessWidget {
  const NavigationTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kirim & Terima Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                readOnly: true,
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
                  helperText: "Data dari layar Navigation!",
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                maxLength: 2,
                decoration: InputDecoration(
                  labelText: 'Nilai 2',
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
                  helperText: "Silahkan input nilai 2 sekarang!",
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Hitung & Selesai'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
