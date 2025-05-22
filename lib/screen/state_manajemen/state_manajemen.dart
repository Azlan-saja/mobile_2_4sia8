import 'package:flutter/material.dart';
import 'package:master/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class StateManajemen extends StatefulWidget {
  const StateManajemen({super.key});

  @override
  State<StateManajemen> createState() => _StateManajemenState();
}

class _StateManajemenState extends State<StateManajemen> {
  final nilaiCounter = TextEditingController(text: "0");
  int nilaiCounterSetState = 2;

  @override
  Widget build(BuildContext context) {
    final pv = Provider.of<CounterProvider>(context, listen: false);
    print("Cetak Layar");
    return Scaffold(
      appBar: AppBar(title: const Text("Layar State Manajemen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('State Local: TextEditingController()'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      int value = int.parse(nilaiCounter.text);
                      value = value - 1;
                      nilaiCounter.text = value.toString();
                    },
                    child: const Text('-1')),
                SizedBox(
                  width: 80,
                  child: TextFormField(
                    readOnly: true,
                    controller: nilaiCounter,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      int value = int.parse(nilaiCounter.text);
                      value = value + 1;
                      nilaiCounter.text = value.toString();
                    },
                    child: const Text('+1')),
              ],
            ),
            const SizedBox(height: 40),
            const Text('State Local: SetState()'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilaiCounterSetState--;
                      });
                    },
                    child: const Text('-1')),
                Text(nilaiCounterSetState.toString(),
                    style: const TextStyle(fontSize: 38)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilaiCounterSetState++;
                      });
                    },
                    child: const Text('+1')),
              ],
            ),
            const SizedBox(height: 40),
            const Text('State Global: Package Provider'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      pv.kurangkan();
                    },
                    child: const Text('-1')),
                Consumer<CounterProvider>(
                  builder: (context, value, child) => Text(
                    value.hasil.toString(),
                    style: const TextStyle(fontSize: 38),
                  ),
                ),
                // Text(pv.hasil.toString(), style: const TextStyle(fontSize: 38)),
                ElevatedButton(
                    onPressed: () {
                      pv.tambahkan();
                    },
                    child: const Text('+1')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
