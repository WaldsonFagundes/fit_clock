import 'package:fit_clock/pages/treino_page.dart';
import 'package:flutter/material.dart';
//https://www.youtube.com/watch?v=BSeUg2YHe6U
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TreinoPage(),
    );
  }
}
