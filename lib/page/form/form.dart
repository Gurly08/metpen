import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primaryColor: Color(0xFFf8ffb9),
      ),
      home: Form(),
    );
  }
}


class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormulirState createState() => _FormulirState();
}

class _FormulirState extends State<Form> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    switch (index) {
      case 2:
        Navigator.pushNamed(context, '/profil');
        break;
      case 1:
        Navigator.pushNamed(context, '/home');
        break;
      default:
        setState(() {
          _currentIndex = index;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Text(
                "ini form",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              // Tambahkan konten lainnya di sini
            ],
          ),
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Menambahkan currentIndex
        onTap: _onTabTapped, // Menambahkan onTap
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Formulir',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, // Mengubah warna AppBar menjadi putih
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/images/sglogo.png',
            height: 75,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16), // Memberikan margin kanan sebesar 16
          child: IconButton(
            icon: Icon(Icons.notifications, color: Colors.black), // Mengubah warna ikon notifikasi menjadi hitam
            onPressed: () {
              // Kode untuk menangani aksi ikon notifikasi
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}