import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KonversiSuhu extends StatefulWidget {

  @override
  _KonversiSuhuState createState() => _KonversiSuhuState();
}

class _KonversiSuhuState extends State<KonversiSuhu> {
  final List<String> temperatureUnits = ['Celsius', 'Fahrenheit', 'Kelvin'];
  String fromUnit = 'Celsius';
  String toUnit = 'Celsius';
  double inputValue = 0;
  double result = 0;

  void convertTemperature() {
    setState(() {
      if (fromUnit == 'Celsius') {
        if (toUnit == 'Fahrenheit') {
          result = (inputValue * 9 / 5) + 32;
        } else if (toUnit == 'Kelvin') {
          result = inputValue + 273.15;
        } else {
          result = inputValue;
        }
      } else if (fromUnit == 'Fahrenheit') {
        if (toUnit == 'Celsius') {
          result = (inputValue - 32) * 5 / 9;
        } else if (toUnit == 'Kelvin') {
          result = (inputValue - 32) * 5 / 9 + 273.15;
        } else {
          result = inputValue;
        }
      } else if (fromUnit == 'Kelvin') {
        if (toUnit == 'Celsius') {
          result = inputValue - 273.15;
        } else if (toUnit == 'Fahrenheit') {
          result = (inputValue - 273.15) * 9 / 5 + 32;
        } else {
          result = inputValue;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040018),
      appBar: AppBar(
        title: Text('Konversi Suhu', style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
        backgroundColor: Color(0xff008c24),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$result $toUnit',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukan nilai suhu',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              onChanged: (value) {
                setState(() {
                  inputValue = double.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  value: fromUnit,
                  onChanged: (String? newValue) {
                    setState(() {
                      fromUnit = newValue!;
                    });
                  },
                  items: temperatureUnits.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.green)),
                    );
                  }).toList(),
                ),
                Text('Konversi menjadi', style: TextStyle(color: Colors.white)),
                DropdownButton<String>(
                  value: toUnit,
                  onChanged: (String? newValue) {
                    setState(() {
                      toUnit = newValue!;
                    });
                  },
                  items: temperatureUnits.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.green)),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                convertTemperature();
              },
              child: Text('Convert', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff008c24),
              ),
            ),

          ],
        ),
      ),
    );
  }
}