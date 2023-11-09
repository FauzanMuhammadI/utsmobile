import 'package:flutter/material.dart';
import 'package:utsmobile/const.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [g2, g1]),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage(vector), height: size.height*0.2,),
                  Text('Belum Punya Akun Yaa.. !',
                    style: Theme.of(context).textTheme.headlineSmall?.merge(GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 30,)
                      ,)
                    ,),
                  Text('Isi Data Dirimu Untuk Membuat Akun',
                    style: Theme.of(context).textTheme.headlineMedium?.merge(GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 15,)
                      ,)
                    ,),
                  Form(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 30.0 -10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person_outline_outlined),
                                  labelText : 'Username',
                                  hintText: 'Masukan Username',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email_outlined),
                                  labelText : 'Email',
                                  hintText: 'Masukan Email',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.call_end_outlined),
                                  labelText : 'No Telepon',
                                  hintText: 'Masukan Nomor telepon',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.fingerprint),
                                  labelText : 'Password',
                                  hintText: 'Masukan Password',
                                  border: OutlineInputBorder(),
                                  suffixIcon: IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.remove_red_eye_sharp),
                                  )
                              ),
                            ),
                            const SizedBox(height: 30.0-10),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Color(0xff272727),
                                  side: BorderSide( color: Color(0xff272727)),
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                ),
                                child: Text('BUAT AKUN'),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('Atau'),
                                SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: OutlinedButton.icon(
                                    onPressed: () {},
                                    label: Text('Masuk Lewat Google'),
                                    icon: Image(image: AssetImage(google), width: 25.0),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.black, backgroundColor: Colors.white, // Atur warna teks menjadi hitam (opsional)
                                      side: BorderSide(color: Colors.black),
                                      padding: EdgeInsets.symmetric(vertical: 15),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                TextButton(
                                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()),
                                    );
                                    },
                                    child: Text.rich(
                                        TextSpan(
                                            text: 'Sudah Punya Akun?',
                                            style: Theme.of(context).textTheme.bodySmall,
                                            children: const[
                                              TextSpan(
                                                text: ' Login Sekarang',
                                                style: TextStyle(color: Colors.blue),
                                              )
                                            ]
                                        )
                                    )
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}