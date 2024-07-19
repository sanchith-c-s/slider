import 'package:flutter/material.dart';

class Timepick extends StatefulWidget {
  const Timepick({super.key});

  @override
  State<Timepick> createState() => _TimepickState();
}

class _TimepickState extends State<Timepick> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  void _showTimePicker() {
    showTimePicker(context: context, 
    initialTime: TimeOfDay.now()
    ).then((value){
      setState(() {
        _timeOfDay=value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 40),
            ),
            MaterialButton(
              onPressed: _showTimePicker,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'PICK TIME',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
