import 'package:flutter/material.dart';
import 'package:sugicare/conten.dart';
// ignore: unused_import
import 'package:sugicare/main.dart';
import 'package:sugicare/page/splash2.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash(),
    );
  }
}

class splash extends StatelessWidget{
  const splash({Key? key}) : super(key: key);

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
            child: Container(margin: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  height: 205,
                ),

                Container(
                  width: 200,
                  height: 250,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SugiCare',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          '“Mengoptimalkan Kualitas Perawatan Bedah Melalui Penjadwalan yang Lebih Teliti dan Efektif”',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: whiteColor),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 70,
                ),

                ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) => splash2()),
                  );
                }, 
                  child: Text("Next", style: TextStyle(color: scntextColor),),
                  style: ElevatedButton.styleFrom(
                    primary: btnColor,
                    minimumSize: Size(150, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
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