import 'package:flutter/material.dart';
import 'package:sugicare/conten.dart';
import 'package:sugicare/page/home/home.dart';
import 'package:sugicare/page/signup.dart';

void main(){
  runApp(const login());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}

class login extends StatelessWidget{
  const login({Key? key}) : super(key: key);

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
                  height: 75,
                ),

                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 25,
                    color: scntextColor,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: 4,
                ),

                Text(
                  "Selamat Datang Kembali",
                  style: TextStyle(
                    fontSize: 20,
                    color: scntextColor,
                  ),
                  textAlign: TextAlign.center,
                ),

                  SizedBox(
                    height: 120,
                  ),


                    Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your email/ID card number",
                        filled: true,
                        fillColor: whiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.person),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),

                    SizedBox(
                      height: 28,
                    ),

                    Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        filled: true,
                        fillColor: whiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.lock),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),


                    SizedBox(
                      height: 100,
                    ),

                    ElevatedButton(onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => home()),
                      );
                    }, 
                      child: Text("Login",
                      style: TextStyle(
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

                    ElevatedButton(onPressed: () {
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
          ),
        ],
      ),
    );
  }
}