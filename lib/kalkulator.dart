import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Kalkulator extends StatefulWidget {
  @override
  _KalkulatorState createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();
  double result = 0;

  @override
  void dispose() {
    value1Controller.dispose();
    value2Controller.dispose();
    super.dispose();
  }

  void clearValues() {
    setState(() {
      value1Controller.clear();
      value2Controller.clear();
      result = 0;
    });
  }

  void calculateResult(String operator) {
    double value1 = double.tryParse(value1Controller.text) ?? 0;
    double value2 = double.tryParse(value2Controller.text) ?? 0;
    double res;
    switch (operator) {
      case '+':
        res = value1 + value2;
        break;
      case '-':
        res = value1 - value2;
        break;
      case '*':
        res = value1 * value2;
        break;
      case '/':
        if (value2 != 0) {
          res = value1 / value2;
        } else {
          res = 0;
        }
        break;
      default:
        res = 0;
    }
    setState(() {
      result = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040018),
      appBar: AppBar(
        title: Text('Kalkulator',
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,)),
        backgroundColor: Color(0xff008c24),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bilangan Pertama',style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 5),
              TextField(
                controller: value1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text('Bilangan Kedua',style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 5),
              TextField(
                controller: value2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '$result',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => calculateResult('+'),
                    child: Text('TAMBAH'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2EB62C),
                      minimumSize: Size(100, 50),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => calculateResult('-'),
                    child: Text('KURANG'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2EB62C),
                      minimumSize: Size(100, 50),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => calculateResult('*'),
                    child: Text('KALI'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2EB62C),
                      minimumSize: Size(100, 50),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => calculateResult('/'),
                    child: Text('BAGI'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2EB62C),
                      minimumSize: Size(100, 50),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => clearValues(),
                child: Text('CLEAR'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2EB62C),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}