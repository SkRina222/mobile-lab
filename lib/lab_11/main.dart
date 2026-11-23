import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/corners_model.dart';
import 'widgets/blue_box.dart';
import 'widgets/sliders_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CornersModel(),
      child: MaterialApp(
        title: 'Lab 11',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Заокруглення кутків')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: Center(child: BlueBox())),
            SlidersSection(),
          ],
        ),
      ),
    );
  }
}
