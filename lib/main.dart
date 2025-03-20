import 'package:flutter/material.dart';
import 'package:master/screen/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Quicksand',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purpleAccent,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.purpleAccent,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.yellow.shade300,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purpleAccent.shade700,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                fontSize: 16,
              )),
        ),
      ),
      home: const Dashboard(),
    );
  }
}
