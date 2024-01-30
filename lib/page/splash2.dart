import 'package:flutter/material.dart';
import 'package:sugicare/conten.dart';
import 'package:sugicare/page/login.dart';
import 'package:sugicare/page/signup.dart';

void main(){
  runApp(const splash2());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash2(),
    );
  }
}

class splash2 extends StatelessWidget{
  const splash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("lib/assets/images/poster.png", fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 150,
                  ),

                  Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SugiCare',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: whiteColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            '“Solusi Terdepan dalam Mengorganisir Prosedur Bedah untuk Kesuksesan yang Tepat Waktu”',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: whiteColor,
                            ),
                            textAlign: TextAlign.center,
                          ), 
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 100,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => login()),
                      );
                    },
                    child: Text("Login",style: TextStyle(
                      color: scntextColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: btnColor,
                      minimumSize: Size(150, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                   ),

                   SizedBox(
                    height: 21,
                   ),

                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                    }, 
                    child: Text("Sign Up",
                    style: TextStyle(
                      color: whiteColor,
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: btn2Color,
                      minimumSize: Size(150, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
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