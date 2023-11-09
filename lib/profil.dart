import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';
import 'login.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color(0xff040018),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    20 * fem, 79 * fem, 16 * fem, 5 * fem),
                width: double.infinity,
                height: 414 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff008c24),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40 * fem),
                    bottomLeft: Radius.circular(40 * fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 5 * fem, 10 * fem, 30 * fem),
                      child: Text(
                        'Profil',
                        style: GoogleFonts.poppins(
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 0.4 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          125 * fem, 0 * fem, 121 * fem, 27 * fem),
                      width: double.infinity,
                      height: 144 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: Container(
                                width: 146 * fem,
                                height: 144 * fem,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 3.0,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    foto,
                                    width: 146 * fem,
                                    height: 144 * fem,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 102 * fem,
                            top: 96 * fem,
                            child: Align(
                              child: Container(
                                width: 46 * fem,
                                height: 46 * fem,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                child: Icon(
                                  Icons.edit,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 400 * fem,
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.nunito(
                            fontSize: 30 * ffem,
                            fontWeight: FontWeight.w900,
                            height: 0.78125 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                          children: [
                            TextSpan(
                              text: 'Fauzan Muhammad Iftitah\n',
                            ),
                            TextSpan(
                              text: '152021053\n',
                              style: GoogleFonts.nunito(
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.25 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    20 * fem, 40 * fem, 20 * fem, 20 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 25.41 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Email : fauzanmiftitah@gmail.com',
                            style: GoogleFonts.poppins(
                              fontSize: 22 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 0.6666666667 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          1.41 * fem, 0 * fem, 110 * fem, 22.27 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 5 * fem),
                            child: Text(
                              'Jurusan : Informatika',
                              style: GoogleFonts.poppins(
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 0.6666666667 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          4.89 * fem, 0 * fem, 175 * fem, 200 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0.96 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Kelas : BB',
                              style: GoogleFonts.poppins(
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 0.6666666667 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36.0 * fem), // Spacing
              ElevatedButton(
                onPressed: () {
                  // Tampilkan dialog konfirmasi
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Konfirmasi Logout'),
                        content: const Text('Apakah Anda yakin ingin logout?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Tidak'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
                            },
                            child: const Text('Ya'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Warna tombol merah
                  minimumSize: Size(88 * ffem, 36 * ffem), // Ukuran minimum
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}