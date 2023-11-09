import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/bmi.dart';
import 'package:utsmobile/kalkulator.dart';
import 'package:utsmobile/konversi_suhu.dart';
import 'package:utsmobile/konversi_uang.dart';

import 'hitung_luas.dart';
import 'index_nilai.dart';

class MenuMatematis extends StatelessWidget {
  const MenuMatematis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0xff040018),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 18 * fem),
                  width: double.infinity,
                  height: 145 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff008c24),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40 * fem),
                      bottomLeft: Radius.circular(40 * fem),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Menu Perhitungan',
                      style: GoogleFonts.poppins(
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kalkulator()),
                  );
                },
                leading: Icon(
                  Icons.calculate,
                  size: 50,
                ),
                title: Text('Kalkulator'),
                subtitle: Text('Alat kalkulator sederhana'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KonversiUang()
                    ),
                  );
                },
                leading: Icon(
                  Icons.monetization_on_rounded,
                  size: 50,
                ),
                title: Text('Konversi Mata Uang'),
                subtitle: Text('Konversi mata uang dari berbagai macam negara'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KonversiSuhu()
                    ),
                  );
                },
                leading: Icon(
                  Icons.sunny_snowing,
                  size: 50,
                ),
                title: Text('Konversi Suhu'),
                subtitle: Text('Mengkonversikan celsius, farenheit, kelvin'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BMI()
                    ),
                  );
                },
                leading: Icon(
                  Icons.accessibility,
                  size: 50,
                ),
                title: Text('Hitung BMI'),
                subtitle: Text('Menghitung nilai kategori berat badan'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IndexNilai()),
                  );
                },
                leading: Icon(
                  Icons.money,
                  size: 50,
                ),
                title: Text('Index Nilai'),
                subtitle: Text('Ubah nilai angka menjadi huruf'),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }
