import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexNilai extends StatefulWidget {
  @override
  _IndexNilaiState createState() => _IndexNilaiState();
}

class _IndexNilaiState extends State<IndexNilai> {
  double uas = 0;
  double uts = 0;
  double tugas1 = 0;
  double tugas2 = 0;
  String hasil = '';

  void calculateIndex() {
    double finalScore = (uas * 0.35) + (uts * 0.3) + (tugas1 * 0.175) + (tugas2 * 0.17905);
    if (finalScore >= 85) {
      hasil = 'A';
    } else if (finalScore >= 71) {
      hasil = 'B';
    } else if (finalScore >= 51) {
      hasil = 'C';
    } else if (finalScore >= 31) {
      hasil = 'D';
    } else {
      hasil = 'E';
    }
  }

  @override
  Widget build(BuildContext context) {
    double finalScore = (uas * 0.35) + (uts * 0.3) + (tugas1 * 0.175) + (tugas2 * 0.17905);
    String finalScoreString = finalScore.toStringAsFixed(2);

    return Scaffold(
      backgroundColor: const Color(0xff040018),
      appBar: AppBar(
        title: Text(
          'Index Nilai',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff008c24),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nilai UAS',
                labelStyle: TextStyle(color: Colors.white),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  uas = double.tryParse(value) ?? 0;
                  calculateIndex();
                });
              },
              style: TextStyle(color: Colors.white),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nilai UTS',
                labelStyle: TextStyle(color: Colors.white),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  uts = double.tryParse(value) ?? 0;
                  calculateIndex();
                });
              },
              style: TextStyle(color: Colors.white),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nilai Tugas 1',
                labelStyle: TextStyle(color: Colors.white),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  tugas1 = double.tryParse(value) ?? 0;
                  calculateIndex();
                });
              },
              style: TextStyle(color: Colors.white),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nilai Tugas 2',
                labelStyle: TextStyle(color: Colors.white),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  tugas2 = double.tryParse(value) ?? 0;
                  calculateIndex();
                });
              },
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Total Nilai Akhir: $finalScoreString',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Indeks Nilai: $hasil',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
