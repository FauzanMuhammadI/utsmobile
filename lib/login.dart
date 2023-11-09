import 'package:flutter/material.dart';
import 'package:utsmobile/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final List<String> validUsernames = ["user1", "user2"];
  final List<String> validPasswords = ["pass1", "pass2"];

  String usernameErrorText = '';
  String passwordErrorText = '';

  //password terlihat
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }


  void validateLogin() {
    String enteredUsername = usernameController.text;
    String enteredPassword = passwordController.text;

    if (enteredUsername.isEmpty) {
      setState(() {
        usernameErrorText = "Tolong isi username";
        passwordErrorText = "";
      });
    } else if (enteredPassword.isEmpty) {
      setState(() {
        usernameErrorText = "";
        passwordErrorText = "Tolong isi password";
      });
    } else {
      int index = validUsernames.indexOf(enteredUsername);

      if (index == -1) {
        setState(() {
          usernameErrorText = "Username salah";
          passwordErrorText = "";
        });
      } else {
        if (enteredPassword != validPasswords[index]) {
          setState(() {
            usernameErrorText = "";
            passwordErrorText = "Password salah";
          });
        } else {
          // Username dan password benar, lanjutkan ke halaman register
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
          );
        }
      }
    }
  }

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
                  Text('Selamat Datang Kembali !',
                    style: Theme.of(context).textTheme.headlineSmall?.merge(GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 30,)
                      ,)
                    ,),
                  Text('Isi Username dan Password Untuk Login',
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
                              controller: usernameController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_outline_outlined),
                                labelText : 'Username',
                                hintText: 'Masukan Username',
                                border: OutlineInputBorder(),
                                errorText: usernameErrorText,
                              ),
                            ),
                            const SizedBox(height: 30.0-20),
                            TextFormField(
                              controller: passwordController,
                              obscureText: !isPasswordVisible,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.fingerprint),
                                labelText: 'Password',
                                hintText: 'Masukkan Password',
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed: togglePasswordVisibility,
                                  icon: Icon(
                                    isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                                errorText: passwordErrorText,
                              ),
                            ),
                            const SizedBox(height: 30.0-10),
                            Align(
                              alignment: Alignment.centerRight ,
                              child: TextButton(
                                  onPressed: (){}, child: Text('Lupa Password ?')),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 10.0,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: validateLogin,
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Color(0xff272727),
                                  side: BorderSide(color: Color(0xff272727)),
                                ),
                                child: Text('LOGIN'),
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
                                  height: 20.0,
                                ),
                                TextButton(
                                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()),
                                    );
                                    },
                                    child: Text.rich(
                                        TextSpan(
                                            text: 'Belum Punya Akun?',
                                            style: Theme.of(context).textTheme.bodySmall,
                                            children: const[
                                              TextSpan(
                                                text: ' Daftar Sekarang',
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
