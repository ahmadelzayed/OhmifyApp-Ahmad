import 'package:flutter/material.dart';

class OhmsLawScreen extends StatefulWidget {
  @override
  _OhmsLawScreenState createState() => _OhmsLawScreenState();
}

class _OhmsLawScreenState extends State<OhmsLawScreen> {
  final _voltage = TextEditingController();
  final _current = TextEditingController();
  double _resistance = 0;

  void _calculateResistance() {
    final double voltage2 = double.tryParse(_voltage.text) ?? 0;
    final double current2 = double.tryParse(_current.text) ?? 0;
    setState(() {
      if (current2 != 0) {
        _resistance = voltage2 / current2;
      } else {
        _resistance = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ohms Law Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _voltage,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Voltage (v) in volt'),
            ),
            TextField(
              controller: _current,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Current (I) in Ampere'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateResistance,
              child: Text('Calculate Resistance'),
            ),
            Text('Resistance: ${_resistance.toStringAsFixed(2)} Ω'), // ohm's symbol
          ],
        ),
      ),
    );
  }
}
