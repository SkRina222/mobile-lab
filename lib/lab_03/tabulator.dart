// file: tabulator.dart
class Tabulator {
  bool verbose = false;

  double _rangeFrom = -5;
  double _rangeTo = 5;
  final double step;

  double? _min;
  double? _max;

  /// Constructor: крок табулювання передається в конструкторі
  Tabulator(this.step) {
    if (step <= 0) {
      throw ArgumentError("Крок табулювання має бути більшим за 0");
    }
  }

  /// Methods
  // getters: рівні null, якщо розрахунок ще не виконувався
  double? get min => _min;
  double? get max => _max;

  // setVerbose вмикає/вимикає виведення проміжних значень
  void setVerbose(bool value) {
    verbose = value;
  }

  // setRange змінює діапазон табулювання (межі включно)
  void setRange(double from, double to) {
    if (from > to) {
      throw ArgumentError("Початок діапазону більший за кінець");
    }
    _rangeFrom = from;
    _rangeTo = to;
  }

  // runCalc запускає процес табулювання
  void runCalc() {
    _min = null;
    _max = null;

    var x = _rangeFrom;
    // 1e-9 захищає від похибки накопичення при x += step
    while (x <= _rangeTo + 1e-9) {
      final y = _calc(x);

      if (y == null) {
        if (verbose) {
          print("x = $x, функція не визначена (ділення на нуль)");
        }
      } else {
        if (verbose) {
          print("x = $x, y = $x / ($x^2 - 4) = $y");
        }
        if (_min == null || y < _min!) {
          _min = y;
        }
        if (_max == null || y > _max!) {
          _max = y;
        }
      }

      x += step;
    }
  }

  // _calc обчислює y = x / (x^2 - 4); у точках x = ±2 повертає null
  double? _calc(double x) {
    final denominator = x * x - 4;
    if (denominator.abs() < 1e-9) {
      return null;
    }
    return x / denominator;
  }
}
