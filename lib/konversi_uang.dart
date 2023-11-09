import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class KonversiUang extends StatefulWidget {
  const KonversiUang({Key? key}) : super(key: key);

  @override
  State<KonversiUang> createState() => _KonversiUangState();
}

class _KonversiUangState extends State<KonversiUang> {
  var apiKey = 'fca_live_xtFj0eIq32x9YL7pTsdsScDLNsWTfHOE0ppapTmE';
  dynamic data;
  bool isLoading = false;
  var hasilKonversi;

  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController totalController = TextEditingController();

  Future<void> convert(base_currency, currencies) async {
    var response = await http.get(
      Uri.parse(
        'https://api.freecurrencyapi.com/v1/latest?apikey=${apiKey}'
            '&base_currency=${base_currency}&currencies=${currencies},${base_currency}',
      ),
    );

    setState(() {
      data = json.decode(response.body);

      hasilKonversi = int.parse(totalController.text) * data['data']['${currencies}'] / data['data']['${base_currency}'];
      isLoading = false;
    });
  }

  List<Map<String, String>> currencies = [
    // ... daftar mata uang
  ];

  @override
  Widget build(BuildContext context) {
    double dropdownWidth = (MediaQuery.of(context).size.width - 40) / 2;

    return Scaffold(
      backgroundColor: Color(0xff040018),
      appBar: AppBar(
        title: Text(
          'Konversi Uang',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff008c24),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: dropdownWidth,
                      height: 70,
                      child: DropdownButtonFormField(
                        items: currencies.map((map) {
                          return DropdownMenuItem<String>(
                            value: map['value'],
                            child: Text(map['label']!),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            fromController.text = newValue.toString();
                          });
                        },
                        value: fromController.text.isNotEmpty ? fromController.text : null,
                        style: TextStyle(color: Colors.green),
                        decoration: InputDecoration(
                          labelText: 'Dari',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.repeat, color: Colors.white),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: dropdownWidth,
                      height: 70,
                      child: DropdownButtonFormField(
                        items: currencies.map((map) {
                          return DropdownMenuItem<String>(
                            value: map['value'],
                            child: Text(map['label']!),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            toController.text = newValue.toString();
                          });
                        },
                        value: toController.text.isNotEmpty ? toController.text : null,
                        style: TextStyle(color: Colors.green),
                        decoration: InputDecoration(
                          labelText: 'Konversi Menjadi',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: totalController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Jumlah Uang',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isLoading = true;
                  });
                  convert(fromController.text, toController.text);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2EB62C),
                ),
                child: isLoading
                    ? CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white,
                  ),
                )
                    : Text(
                  'Konversi!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hasil Konversi',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              data != null
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1 ${fromController.text} = ${data['data']['${toController.text}']} ${toController.text} \n'
                        '${totalController.text} ${fromController.text} = ${hasilKonversi} ${toController.text} \n',
                    style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
                  ),
                ],
              )
                  : Text(
                'Belum Ada Data',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
