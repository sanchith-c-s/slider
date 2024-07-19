import 'package:flutter/material.dart';

class Datepick extends StatefulWidget {
  const Datepick({super.key});

  @override
  State<Datepick> createState() => _DatepickState();
}

class _DatepickState extends State<Datepick> {

DateTime _dateTime = DateTime.now();

void _showDatePicker (){
showDatePicker(context: context,
 firstDate: DateTime(2000), 
 lastDate: DateTime(2030),
 initialDate: DateTime.now()
 ).then((value){
  setState(() {
    _dateTime=value!;
  });
 });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_dateTime.toString(),style: TextStyle(fontSize: 20),),
            MaterialButton(onPressed: _showDatePicker,
            color: Colors.blueAccent,
            child: Padding(padding: EdgeInsets.all(20),
            child: Text('Choose Date',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25
            ),),
            ),
            ),
          ],
        ),
      ),
    );
  }
}