import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/hasil_bmi.dart';
import 'package:utsmobile/model_bmi.dart';

import 'const.dart';


class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double _heightOfUser = 100.0;
  double _weightOfUser = 40.0;
  double _bmi = 0;
  late BMIModel _bmiModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040018),
      appBar: AppBar(
        title: Text(
          'Kalkulator BMI',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff008c24),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                child: SvgPicture.asset(hati, fit: BoxFit.contain),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "BMI Kalkulator",
                style: TextStyle(color: Colors.red[700], fontSize: 34, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Tinggi Badan (CM)",
                style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 80.0,
                  max: 250.0,
                  onChanged: (height) {
                    setState(() {
                      _heightOfUser = height;
                    });
                  },
                  value: _heightOfUser,
                  divisions: 100,
                  activeColor: Colors.pink,
                  label: "$_heightOfUser",
                ),
              ),
              Text(
                "$_heightOfUser cm",
                style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Berat Badan (KG)",
                style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 30.0,
                  max: 120.0,
                  onChanged: (weight) {
                    setState(() {
                      _weightOfUser = weight;
                    });
                  },
                  value: _weightOfUser,
                  divisions: 100,
                  activeColor: Colors.pink,
                  label: "$_weightOfUser",
                ),
              ),
              Text(
                "$_weightOfUser kg",
                style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _bmi = _weightOfUser / ((_heightOfUser / 100) * (_heightOfUser / 100));

                      if (_bmi >= 18.5 && _bmi <= 25) {
                        _bmiModel = BMIModel(bmi: _bmi, isNormal: true, comments: "Kamu sangat sehat dan normal");
                      } else if (_bmi < 18.5) {
                        _bmiModel = BMIModel(bmi: _bmi, isNormal: false, comments: "Berat badanmu kurang (Underweight)");
                      } else if (_bmi > 25 && _bmi <= 30) {
                        _bmiModel = BMIModel(bmi: _bmi, isNormal: false, comments: "Berat badanmu terlalu berat (Overweight)");
                      } else {
                        _bmiModel = BMIModel(bmi: _bmi, isNormal: false, comments: "Kamu Obesitas");
                      }
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HasilBmi(bmiModel: _bmiModel)),
                    );
                  },
                  icon: Icon(Icons.favorite, color: Colors.white),
                  label: Text("HITUNG"),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.pink)),
                ),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
