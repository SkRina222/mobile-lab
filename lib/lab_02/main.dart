void main() {
  const valueFrom = -5.0;
  const valueTo = 3.0;
  const step = 0.25;

  print("y = 2 * x^2\n");

  var sum = 0.0;

  // Діапазон (-5, 3]: точка -5 не входить, точка 3 входить,
  // тому починаємо з -5 + step і порівнюємо з valueTo нестрого.
  for (var x = valueFrom + step; x <= valueTo; x += step) {
    final y = calc(x);
    print("x = $x, 2 * $x^2 = $y");
    sum += y;
  }

  print("\nsum = $sum");
}

double calc(double x) {
  return 2 * x * x;
}
