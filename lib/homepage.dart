import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/const.dart';
import 'package:utsmobile/profil.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

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
            decoration: BoxDecoration(
              color: Color(0xff040018),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                  padding: EdgeInsets.fromLTRB(20*fem, 51*fem, 25*fem, 25*fem),
                  width: double.infinity,
                  decoration: BoxDecoration (
                    color: Color(0xff008c24),
                    borderRadius: BorderRadius.only (
                      bottomRight: Radius.circular(50*fem),
                      bottomLeft: Radius.circular(50*fem),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                        width: double.infinity,
                        height: 70*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 86*fem, 0*fem),
                              constraints: BoxConstraints (
                                maxWidth: 250*fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.poppins (
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2102272511*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Selamat Datang',
                                      style: GoogleFonts.poppins (
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5*ffem/fem,
                                        color: Color(0x99ffffff),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 👋\n',
                                      style: GoogleFonts.poppins (
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Fauzan Muhammad',
                                      style: GoogleFonts.poppins (
                                        fontSize: 21*ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 79 * fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 8 * fem,
                                    top: 0 * fem,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return Profil();
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 71 * fem,
                                        height: 70 * fem,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(foto),
                                            fit: BoxFit.cover,
                                          ),
                                          border: Border.all(
                                            width: 2,
                                            color: const Color(0xFFDFFFD4),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.elliptical(36 * fem, 35 * fem)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0*fem,
                                    top: 40*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 30*fem,
                                        height: 30*fem,
                                        child: Container(
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(15*fem),
                                            color: Color(0xffcdffd3),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 6*fem,
                                    top: 46*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 17*fem,
                                        height: 17*fem,
                                        child: Image.asset(
                                          notif,
                                          width: 17*fem,
                                          height: 17*fem,
                                        ),
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
                        padding: EdgeInsets.fromLTRB(19*fem, 5*fem, 20*fem, 5*fem),
                        width: double.infinity,
                        height: 90*fem,
                        decoration: BoxDecoration (
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 6*fem, 0*fem),
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD00000),
                                  shape: CircleBorder(),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    box,
                                    width: 19*fem,
                                    height: 19*fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                              constraints: BoxConstraints (
                                maxWidth: 128*fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.nunito (
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.75*ffem/fem,
                                    color: Color(0xff6b6b6b),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Total Produk \n',
                                    ),
                                    TextSpan(
                                      text: '523 Kg',
                                      style: GoogleFonts.poppins (
                                        fontSize: 32*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.09375*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 6*fem, 0*fem),
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFE1B722),
                                  shape: CircleBorder(),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    sensor,
                                    width: 19*fem,
                                    height: 19*fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // totalsensor10mhb (192:6621)
                              constraints: BoxConstraints (
                                maxWidth: 126*fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.nunito (
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.75*ffem/fem,
                                    color: Color(0xff6b6b6b),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Total Sensor \n',
                                    ),
                                    TextSpan(
                                      text: '10',
                                      style: GoogleFonts.poppins (
                                        fontSize: 32*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.09375*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
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
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                  width: double.infinity,
                  height: 160*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                        width: 215*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 20*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 192*fem,
                                  height: 138*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(20*fem),
                                      color: Color(0xfff1f1f1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 44*fem,
                              top: 11*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 105*fem,
                                  height: 65*fem,
                                  child: Text(
                                    'Sensor\nBuah',
                                    style: GoogleFonts.nunito (
                                      fontSize: 32*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.015625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 100*fem,
                              top: 63*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 129*fem,
                                  height: 101*fem,
                                  child: Image.asset(
                                    buah,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 200*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 185*fem,
                                  height: 138*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(20*fem),
                                      color: Color(0xfff1f1f1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20*fem,
                              top: 11*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 105*fem,
                                  height: 65*fem,
                                  child: Text(
                                    'Sensor\nSayur',
                                    style: GoogleFonts.nunito (
                                      fontSize: 32*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.015625*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 99*fem,
                              top: 43*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 117*fem,
                                  height: 117*fem,
                                  child: Image.asset(
                                    sayur,
                                    fit: BoxFit.cover,
                                  ),
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
                  margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 0*fem, 0*fem),
                  child: Text(
                    'Grafik',
                    style: GoogleFonts.nunito (
                      fontSize: 32*ffem,
                      fontWeight: FontWeight.w800,
                      height: 1.015625*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(19*fem, 6*fem, 26*fem, 51*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                        width: double.infinity,
                        height: 231*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(20*fem),
                          color: Color(0xfff1f1f1),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.08*fem),
                        width: double.infinity,
                        height: 110.92*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(15*fem, 13.32*fem, 11*fem, 13.92*fem),
                              width: 114*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff1f1f1),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 12.32*fem),
                                    width: 54*fem,
                                    height: 41.37*fem,
                                    child: Image.asset(
                                      onsensor,
                                      width: 54*fem,
                                      height: 41.37*fem,
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints (
                                      maxWidth: 88*fem,
                                    ),
                                    child: Text(
                                      'Matikan Semua Sensor Buah',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito (
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.1666666667*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                              width: 114*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0*fem,
                                    top: 2*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 114*fem,
                                        height: 108.92*fem,
                                        child: Container(
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(20*fem),
                                            color: Color(0xfff1f1f1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16*fem,
                                    top: 69*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 82*fem,
                                        height: 28*fem,
                                        child: Text(
                                          'Nyalakan Semua Sensor',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.nunito (
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w800,
                                            height: 1.1666666667*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 27*fem,
                                    top: 16.0843505859*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 60*fem,
                                        height: 39.83*fem,
                                        child: Image.asset(
                                          alloffsensor,
                                          width: 60*fem,
                                          height: 39.83*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(8.5*fem, 13.32*fem, 9.5*fem, 13.92*fem),
                              width: 114*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff1f1f1),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 12.32*fem),
                                    width: 54*fem,
                                    height: 41.37*fem,
                                    child: Image.asset(
                                      onsensor,
                                      width: 54*fem,
                                      height: 41.37*fem,
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints (
                                      maxWidth: 96*fem,
                                    ),
                                    child: Text(
                                      'Nyalakan Semua Sensor Sayur',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito (
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.1666666667*ffem/fem,
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
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
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
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                        padding: EdgeInsets.fromLTRB(13*fem, 8*fem, 19.5*fem, 8*fem),
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
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                              width: 75*fem,
                              height: 75*fem,
                              child: Image.asset(
                                strawberry,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 17.5*fem, 6*fem),
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
                                      maxWidth: 237*fem,
                                    ),
                                    child: Text(
                                      'Stok Strawberry bertambah total 10 kg',
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
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                              width: 9*fem,
                              height: 39*fem,
                              child: Image.asset(
                                dots,
                                width: 9*fem,
                                height: 39*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                        padding: EdgeInsets.fromLTRB(13*fem, 6*fem, 19.5*fem, 8*fem),
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
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 77*fem,
                              height: 77*fem,
                              child: Image.asset(
                                anggur,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 36.5*fem, 10*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                    child: Text(
                                      '28/10/23 - 06:05 - Sensor-B2',
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
                                      maxWidth: 202*fem,
                                    ),
                                    child: Text(
                                      'Stok Anggur bertambah total 20 kg',
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
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                              width: 9*fem,
                              height: 39*fem,
                              child: Image.asset(
                                dots,
                                width: 9*fem,
                                height: 39*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(19*fem, 15.95*fem, 19.5*fem, 22.95*fem),
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
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                              width: 68*fem,
                              height: 52.09*fem,
                              child: Image.asset(
                                onsensor,
                                width: 68*fem,
                                height: 52.09*fem,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 7.05*fem, 56.5*fem, 9.05*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
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
                                    'Semua sensor menyala',
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
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 0*fem),
                              width: 9*fem,
                              height: 39*fem,
                              child: Image.asset(
                                dots,
                                width: 9*fem,
                                height: 39*fem,
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