import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {
  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  double _inputValue = 0;
  String _inputUnit = 'Ohm';
  String _outputUnit = 'Kilo-Ohm';
  double _outputValue = 0;

  final Map<String, double> _conversionFactors = {
    'Ohm': 1,
    'Milli-Ohm': 0.001,
    'Kilo-Ohm': 1000,
    'Mega-Ohm': 1e6,
    'Nano-Ohm': 1e-9,
  };

  void _convert() {
    setState(() {
      _outputValue = _inputValue * (_conversionFactors[_inputUnit]! / _conversionFactors[_outputUnit]!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ohm Unit Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Value'),
              onChanged: (value) {
                _inputValue = double.tryParse(value) ?? 0;
              },
            ),
            DropdownButton<String>(
              value: _inputUnit,
              items: _conversionFactors.keys.map((String unit) {
                return DropdownMenuItem<String>(
                  value: unit,
                  child: Text(unit),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _inputUnit = newValue!;
                });
              },
            ),
            DropdownButton<String>(
              value: _outputUnit,
              items: _conversionFactors.keys.map((String unit) {
                return DropdownMenuItem<String>(
                  value: unit,
                  child: Text(unit),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _outputUnit = newValue!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convert,
              child: Text('Convert'),
            ),
            Text('Converted Value: $_outputValue'),
          ],
        ),
      ),
    );
  }
}
