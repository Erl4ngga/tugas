// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market/view/HomePage.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 200,
            child: Image(
              image: AssetImage('assets/images/1.png'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: const [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5), // Jarak antara teks "Welcome" dan teks H2
                Text(
                  'By signing in you are agreeing our',
                  style: TextStyle(
                    fontSize: 16, // ukuran teks H2
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Text(
                  'Term and privacy policy',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFE72463),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16), // Padding untuk kontainer
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username', // Label untuk kotak teks
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                    height:
                        16), // Jarak antara kotak teks username dan password
                TextField(
                  obscureText:
                      true, // Untuk menyembunyikan teks input (untuk password)
                  decoration: InputDecoration(
                    labelText: 'Password', // Label untuk kotak teks
                    prefixIcon: Icon(Icons.lock), // Ikon kunci // Ikon kunci
                  ),
                ),
                SizedBox(
                    height:
                        15), // Jarak antara kotak teks password dan tombol login
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Homepage()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFE72463)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(120, 40)),
                        ),
                        child: Text('Login'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Aksi yang dijalankan saat tombol register ditekan
                          // Anda dapat menambahkan logika untuk pindah ke halaman pendaftaran di sini
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFE72463)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(120, 40)),
                        ),
                        child: Text('Register'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
