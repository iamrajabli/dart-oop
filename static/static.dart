void main(List<String> args) {
  Math calc = Math(1, 2);

  print(calc.foo());
}

class Math {
  static double PI = 3.14;
  int first;
  int second;

  Math(this.first, this.second);

  double foo() {
    return (this.first + this.second) * Math.PI;
  }
}
