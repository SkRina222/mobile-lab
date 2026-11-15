import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Параметри "пікселя" (варіант 21)
const _size = 75.0;
const _bgColor = Colors.red;
const _borderColor = Colors.black;
const _borderWidth = 4.0;
const _borderRadius = 15.0;

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: _buildSeven(),
        ),
      ),
    );
  }

  // Цифра 7 на сітці 4 x 6: X - піксель, . - порожнє місце
  List<Widget> _buildSeven() {
    return [
      _buildLine('XXXX'),
      _buildLine('...X'),
      _buildLine('..X.'),
      _buildLine('..X.'),
      _buildLine('.X..'),
      _buildLine('.X..'),
    ];
  }

  Widget _buildLine(String pattern) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (final symbol in pattern.split(''))
          symbol == 'X' ? _buildDot() : _buildEmpty(),
      ],
    );
  }

  Widget _buildDot() {
    return Container(
      width: _size,
      height: _size,
      decoration: BoxDecoration(
        color: _bgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(_borderRadius),
        ),
        border: Border.all(
          color: _borderColor,
          width: _borderWidth,
        ),
      ),
    );
  }

  Widget _buildEmpty() {
    return const SizedBox(
      width: _size,
      height: _size,
    );
  }
}
