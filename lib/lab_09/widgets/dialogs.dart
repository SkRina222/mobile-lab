import 'package:flutter/material.dart';

// Діалогове вікно-заглушка для кнопок, які ще не мають логіки
void showNotImplementedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext ctx) {
      return const AlertDialog(
        title: Text('Message'),
        content: Text('Need to implement'),
      );
    },
  );
}
