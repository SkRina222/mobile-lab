import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/corners_model.dart';

class BlueBox extends StatelessWidget {
  const BlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CornersModel>();

    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(model.topLeft),
          topRight: Radius.circular(model.topRight),
          bottomLeft: Radius.circular(model.bottomLeft),
          bottomRight: Radius.circular(model.bottomRight),
        ),
      ),
    );
  }
}
