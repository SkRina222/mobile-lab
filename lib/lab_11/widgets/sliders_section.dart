import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/corners_model.dart';
import 'radius_slider.dart';

class SlidersSection extends StatelessWidget {
  const SlidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CornersModel>();

    return Column(
      children: [
        RadiusSlider(
          label: 'Лівий верхній',
          value: model.topLeft,
          max: CornersModel.maxRadius,
          onChanged: model.setTopLeft,
        ),
        RadiusSlider(
          label: 'Правий верхній',
          value: model.topRight,
          max: CornersModel.maxRadius,
          onChanged: model.setTopRight,
        ),
        RadiusSlider(
          label: 'Лівий нижній',
          value: model.bottomLeft,
          max: CornersModel.maxRadius,
          onChanged: model.setBottomLeft,
        ),
        RadiusSlider(
          label: 'Правий нижній',
          value: model.bottomRight,
          max: CornersModel.maxRadius,
          onChanged: model.setBottomRight,
        ),
      ],
    );
  }
}
