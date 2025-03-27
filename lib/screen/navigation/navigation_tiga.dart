import 'package:flutter/material.dart';

class NavigationTiga extends StatelessWidget {
  final int nilai1;

  NavigationTiga({super.key, required this.nilai1});

  final nilai2 = TextEditingController();

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
                initialValue: nilai1.toString(),
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
                controller: nilai2,
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
                onPressed: () {
                  int hasil = nilai1 + int.parse(nilai2.text);
                  Navigator.pop(context, "$nilai1 + ${nilai2.text} = $hasil");
                },
                child: const Text('Hitung & Selesai'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
