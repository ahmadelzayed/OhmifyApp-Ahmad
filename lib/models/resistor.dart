class Resistor {
  double resistivity;
  String color;

  Resistor({required this.resistivity, required this.color});

  double get getResistivity => resistivity;
  String get getColor => color;

  void setResistivity(double value) => resistivity = value;
  void setColor(String value) => color = value;
}
