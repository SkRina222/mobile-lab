import 'package:flutter/material.dart';

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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// StatefulWidget: зберігає стан - поточні значення R, G, B
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _red = 128;
  double _green = 128;
  double _blue = 128;

  @override
  Widget build(BuildContext context) {
    final color = Color.fromRGBO(
      _red.round(),
      _green.round(),
      _blue.round(),
      1,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Container(
              width: 150,
              height: 150,
              color: color,
            ),
            const SizedBox(height: 8),
            Text('RGB(${_red.round()}, ${_green.round()}, ${_blue.round()})'),
            const SizedBox(height: 24),
            ColorSlider(
              label: 'Red',
              value: _red,
              onChanged: (value) => setState(() => _red = value),
            ),
            ColorSlider(
              label: 'Green',
              value: _green,
              onChanged: (value) => setState(() => _green = value),
            ),
            ColorSlider(
              label: 'Blue',
              value: _blue,
              onChanged: (value) => setState(() => _blue = value),
            ),
          ],
        ),
      ),
    );
  }
}

// StatelessWidget: не має власного стану, лише відображає отримані значення
class ColorSlider extends StatelessWidget {
  const ColorSlider({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label: ${value.round()}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Slider(
          value: value,
          min: 0,
          max: 255,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
