import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/const.dart';

class Sensor extends StatelessWidget {
  const Sensor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration (
              color: Color(0xff040018),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 145*fem,
                  decoration: BoxDecoration (
                    color: Color(0xff008c24),
                    borderRadius: BorderRadius.only (
                      bottomRight: Radius.circular(40*fem),
                      bottomLeft: Radius.circular(40*fem),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Data Sensor',
                      style: GoogleFonts.poppins (
                        fontSize: 40*ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.5*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20*fem, 33*fem, 20*fem, 69*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group5511ww (219:6631)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                        padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 25*fem, 12*fem),
                        width: double.infinity,
                        height: 88*fem,
                        decoration: BoxDecoration (
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140*fem, 0*fem),
                              width: 182*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0*fem,
                                    top: 24*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 182*fem,
                                        height: 42*fem,
                                        child: Text(
                                          'Sensor Buah',
                                          style: GoogleFonts.poppins (
                                            fontSize: 28*ffem,
                                            fontWeight: FontWeight.w800,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 130*fem,
                                        height: 30*fem,
                                        child: Text(
                                          'Jenis sensor',
                                          style: GoogleFonts.poppins (
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w800,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff6b6b6b),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 7.6*fem, 0*fem, 0*fem),
                              width: 18*fem,
                              height: 30*fem,
                              child: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Color(0xff6b6b6b),
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                        padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 25*fem, 12*fem),
                        width: double.infinity,
                        height: 88*fem,
                        decoration: BoxDecoration (
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 156*fem, 0*fem),
                              width: 166*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0*fem,
                                    top: 24*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 166*fem,
                                        height: 42*fem,
                                        child: Text(
                                          'Sensor - B4',
                                          style: GoogleFonts.poppins (
                                            fontSize: 28*ffem,
                                            fontWeight: FontWeight.w800,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // sensorVGm (219:6637)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 72*fem,
                                        height: 30*fem,
                                        child: Text(
                                          'Sensor',
                                          style: GoogleFonts.poppins (
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w800,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff6b6b6b),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 7.6*fem, 0*fem, 0*fem),
                              width: 18*fem,
                              height: 30*fem,
                              child: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Color(0xff6b6b6b),
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 30.3*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 2.3*fem, 46*fem, 0*fem),
                              child: Text(
                                'Aktifkan Sensor',
                                style: GoogleFonts.poppins (
                                  fontSize: 28*ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 106*fem,
                                height: 47.7*fem,
                                child: Image.asset(
                                  toggle,
                                  width: 106*fem,
                                  height: 47.7*fem,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                        width: double.infinity,
                        height: 297*fem,
                        decoration: BoxDecoration (
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 106*fem,
                              top: 11*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 178*fem,
                                  height: 176*fem,
                                  child: Image.asset(
                                    strawberry,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 87*fem,
                              top: 175*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 213*fem,
                                  height: 54*fem,
                                  child: Text(
                                    'Strawberry',
                                    style: GoogleFonts.poppins (
                                      fontSize: 36*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 148*fem,
                              top: 222*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 91*fem,
                                  height: 48*fem,
                                  child: Text(
                                    '20 Kg',
                                    style: GoogleFonts.poppins (
                                      fontSize: 32*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff6b6b6b),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                              child: Text(
                                'Logs',
                                style: GoogleFonts.nunito (
                                  fontSize: 32*ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.015625*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                              padding: EdgeInsets.fromLTRB(13.17*fem, 8*fem, 53.68*fem, 8*fem),
                              width: double.infinity,
                              height: 91*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff1f1f1),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.18*fem, 0*fem),
                                    width: 75.97*fem,
                                    height: 75*fem,
                                    child: Image.asset(
                                      strawberry,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 0*fem, 6*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                          child: Text(
                                            '28/10/23 - 06:40 - Sensor-B4',
                                            style: GoogleFonts.poppins (
                                              fontSize: 15*ffem,
                                              fontWeight: FontWeight.w800,
                                              height: 1.0666666667*ffem/fem,
                                              color: Color(0x99000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          constraints: BoxConstraints (
                                            maxWidth: 233*fem,
                                          ),
                                          child: Text(
                                            'Stok Strawberry bertambah total 20 kg',
                                            style: GoogleFonts.poppins (
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w800,
                                              height: 1.375*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                              padding: EdgeInsets.fromLTRB(19.25*fem, 15.95*fem, 149.66*fem, 22.95*fem),
                              width: double.infinity,
                              height: 91*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff1f1f1),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.21*fem, 0*fem),
                                    width: 68.88*fem,
                                    height: 52.09*fem,
                                    child: Image.asset(
                                      onsensor,
                                      width: 68.88*fem,
                                      height: 52.09*fem,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 7.05*fem, 0*fem, 9.05*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // HSq (222:6933)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          child: Text(
                                            '28/10/23 - 06:00',
                                            style: GoogleFonts.poppins (
                                              fontSize: 15*ffem,
                                              fontWeight: FontWeight.w800,
                                              height: 1.0666666667*ffem/fem,
                                              color: Color(0x99000000),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Sensor menyala',
                                          style: GoogleFonts.poppins (
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w800,
                                            height: 1*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                              padding: EdgeInsets.fromLTRB(19.25*fem, 15.95*fem, 170.66*fem, 22.95*fem),
                              width: double.infinity,
                              height: 91*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff1f1f1),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.21*fem, 0*fem),
                                    width: 68.88*fem,
                                    height: 52.09*fem,
                                    child: Image.asset(
                                      offsensor,
                                      width: 68.88*fem,
                                      height: 52.09*fem,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 7.05*fem, 0*fem, 9.05*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // u6q (222:6941)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          child: Text(
                                            '27/10/23 - 21:30',
                                            style: GoogleFonts.poppins (
                                              fontSize: 15*ffem,
                                              fontWeight: FontWeight.w800,
                                              height: 1.0666666667*ffem/fem,
                                              color: Color(0x99000000),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Sensor mati',
                                          style: GoogleFonts.poppins (
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w800,
                                            height: 1*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(13.17*fem, 8*fem, 59.68*fem, 8*fem),
                              width: double.infinity,
                              height: 91*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff1f1f1),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.18*fem, 0*fem),
                                    width: 75.97*fem,
                                    height: 75*fem,
                                    child: Image.asset(
                                      strawberry,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 0*fem, 6*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                          child: Text(
                                            '27/10/23 - 21:00 - Sensor-B4',
                                            style: GoogleFonts.poppins (
                                              fontSize: 15*ffem,
                                              fontWeight: FontWeight.w800,
                                              height: 1.0666666667*ffem/fem,
                                              color: Color(0x99000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          constraints: BoxConstraints (
                                            maxWidth: 227*fem,
                                          ),
                                          child: Text(
                                            'Stok Strawberry berkurang total 10 kg',
                                            style: GoogleFonts.poppins (
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w800,
                                              height: 1.375*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
