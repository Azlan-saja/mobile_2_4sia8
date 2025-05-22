import 'package:flutter/material.dart';

class FileJsonScreen extends StatefulWidget {
  const FileJsonScreen({super.key});

  @override
  State<FileJsonScreen> createState() => _FileJsonScreenState();
}

class _FileJsonScreenState extends State<FileJsonScreen> {
  final jamController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layar File JSON"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextFormField(
              controller: jamController,
              onTap: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then(
                  (value) {
                    if (value != null) {
                      if (!context.mounted) return;
                      jamController.text = value.format(context);
                    }
                  },
                );
              },
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Jam Masuk',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Mata Pelajaran',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Simpan')),
                ElevatedButton(onPressed: () {}, child: const Text('Batal')),
              ],
            ),
            Divider(
              color: Theme.of(context).appBarTheme.backgroundColor,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).appBarTheme.backgroundColor,
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    title: Text(
                      'Azlan $index',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '1011202 $index',
                      style: TextStyle(
                          color: Theme.of(context).appBarTheme.backgroundColor,
                          fontStyle: FontStyle.italic),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            size: 30,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
