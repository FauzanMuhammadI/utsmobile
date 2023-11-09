import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:utsmobile/hasil_bmi.dart';

import 'const.dart';

class HasilBmi extends StatelessWidget {
  final bmiModel;

  HasilBmi({this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040018),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              child: bmiModel.isNormal
                  ? SvgPicture.asset(
                senang,
                fit: BoxFit.contain,
              )
                  : SvgPicture.asset(
                sedih,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Nilai BMI Kamu ${bmiModel.bmi.round()}",
              style: TextStyle(
                  color: Colors.red[700],
                  fontSize: 34,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "${bmiModel.comments}",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 16,
            ),
            bmiModel.isNormal
                ? Text(
              "Horee, Nilai BMI kamu normal",
              style: TextStyle(
                  color: Colors.red[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            )
                : Text(
              "Yahh, Nilai BMI kamu tidak normal",
              style: TextStyle(
                  color: Colors.red[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 16, right: 16),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                label: Text("AYO HITUNG LAGI"),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.pink),
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
