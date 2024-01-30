import 'package:flutter/material.dart';
import 'package:sugicare/conten.dart';
import 'package:sugicare/page/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:sugicare(),
    );
  }
}

class sugicare extends StatelessWidget{
  const sugicare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "lib/assets/images/poster.png",
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 45,
                  ),

                  Center(
                    child: Image.asset(
                      "lib/assets/images/sglogo.png",
                      width: 200, // Ubah sesuai kebutuhan
                      height: 200, // Ubah sesuai kebutuhan
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),

                  ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context) => splash()),
                       );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: btnColor, // Ganti dengan warna latar belakang yang diinginkan
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Ganti dengan radius yang diinginkan
                    ),
                    minimumSize: Size(150, 45), // Ganti dengan lebar dan tinggi yang diinginkan
                  ),
                  child: Text(
                    "Mulai",
                    style: TextStyle(
                      color: scntextColor, // Ganti dengan warna teks yang diinginkan
                      fontSize: 18,
                    ),
                  ),
                ),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}