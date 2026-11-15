// file: main.dart
import 'tabulator.dart';

void main() {
  // крок табулювання задається в конструкторі
  final processor = Tabulator(0.5);
  processor.setVerbose(true);

  // діапазон за замовчуванням [-5, 5]
  print("Діапазон за замовчуванням [-5, 5]\n");
  processor.runCalc();
  print("\nmin = ${processor.min}");
  print("max = ${processor.max}");

  // зміна діапазону методом setRange (обидві межі включно)
  print("\nДіапазон [-3, 3]\n");
  processor.setRange(-3, 3);
  processor.runCalc();
  print("\nmin = ${processor.min}");
  print("max = ${processor.max}");
}
