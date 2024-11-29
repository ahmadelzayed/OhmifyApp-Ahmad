import 'package:flutter/material.dart';
import 'ohms_law_screen.dart';
import 'color_code_screen.dart';
import 'converter_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ohmify App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OhmsLawScreen()));
              },
              child: Text('Calculate with Ohms Law'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ColorCodeScreen()));
              },
              child: Text('Choose Resistor Color'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConverterScreen()));
              },
              child: Text('Ohm Unit Converter'),
            ),
            SizedBox(height: 20),
            Text(
              'By Ahmad I. Zayed - 12234004',
              style: TextStyle(
                fontSize: 14,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
