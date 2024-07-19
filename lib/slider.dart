import 'package:flutter/material.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double _currentValue = 0;
  @override
  

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_currentValue.toString(),style: TextStyle(fontSize: 30),),
          Slider(
            value: _currentValue,
            min: 0,
            max: 10,
            divisions: 4,
            label: _currentValue.toString(),
            activeColor: Colors.blue,
            thumbColor: Colors.red,
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
