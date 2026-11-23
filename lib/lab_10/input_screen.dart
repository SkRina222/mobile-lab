import 'package:flutter/material.dart';

import 'preview_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final _controller = TextEditingController();
  double _fontSize = 24;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _openPreview() async {
    // Очікуємо результат, який другий екран передасть у Navigator.pop
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => PreviewScreen(
          text: _controller.text,
          fontSize: _fontSize,
        ),
      ),
    );

    if (!mounted) {
      return;
    }

    final String message;
    if (result == 'ok') {
      message = 'Cool!';
    } else if (result == 'cancel') {
      message = "Let's try something else";
    } else {
      // перехід назад без натиску на Ok або Cancel
      message = "Don't know what to say";
    }

    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(content: Text(message));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Text preview'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Text',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Text('Font size: ${_fontSize.round()}'),
            Slider(
              value: _fontSize,
              min: 10,
              max: 60,
              divisions: 50,
              onChanged: (value) => setState(() => _fontSize = value),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _openPreview,
                child: const Text('Preview'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
