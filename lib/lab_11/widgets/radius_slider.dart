import 'package:flutter/material.dart';

class RadiusSlider extends StatelessWidget {
  const RadiusSlider({
    super.key,
    required this.label,
    required this.value,
    required this.max,
    required this.onChanged,
  });

  final String label;
  final double value;
  final double max;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 150, child: Text('$label: ${value.round()}')),
        Expanded(
          child: Slider(
            value: value,
            min: 0,
            max: max,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
