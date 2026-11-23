import 'package:flutter/foundation.dart';

class CornersModel extends ChangeNotifier {
  static const double maxRadius = 75;

  double _topLeft = 0;
  double _topRight = 0;
  double _bottomLeft = 0;
  double _bottomRight = 0;

  double get topLeft => _topLeft;
  double get topRight => _topRight;
  double get bottomLeft => _bottomLeft;
  double get bottomRight => _bottomRight;

  void setTopLeft(double value) {
    _topLeft = value;
    notifyListeners();
  }

  void setTopRight(double value) {
    _topRight = value;
    notifyListeners();
  }

  void setBottomLeft(double value) {
    _bottomLeft = value;
    notifyListeners();
  }

  void setBottomRight(double value) {
    _bottomRight = value;
    notifyListeners();
  }
}
