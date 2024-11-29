import 'package:flutter/material.dart';

class ColorCodeScreen extends StatefulWidget {
  @override
  _ColorCodeScreenState createState() => _ColorCodeScreenState();
}

class _ColorCodeScreenState extends State<ColorCodeScreen> {
  String _selectedColor = 'Black';
  final Map<String, int> _colorMap = {
    'Black': 0,
    'Brown': 1,
    'Red': 2,
    'Orange': 3,
    'Yellow': 4,
    'Green': 5,
    'Blue': 6,
    'Violet': 7,
    'Gray': 8,
    'White': 9,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resistor Color Code')),
      body: Column(
        children: [
          DropdownButton<String>(
            value: _selectedColor,
            items: _colorMap.keys.map((String color) {
              return DropdownMenuItem<String>(
                value: color,
                child: Text(color),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                _selectedColor = newValue!;
              });
            },
          ),
          SizedBox(height: 20),
          Text('Resistor Value: ${_colorMap[_selectedColor]} Ω'),
        ],
      ),
    );
  }
}
