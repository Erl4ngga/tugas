// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

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
                    color: Colors.blue, // ukuran teks H2
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
                  height: 16, // Jarak antara kotak teks username dan password
                ),
                TextField(
                  obscureText:
                      true, // Untuk menyembunyikan teks input (untuk password)
                  decoration: InputDecoration(
                    labelText: 'Password', // Label untuk kotak teks
                    prefixIcon: Icon(Icons.lock), // Ikon kunci
                  ),
                ),
                SizedBox(
                  height:
                      16, // Jarak antara kotak teks password dan tombol login/register
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi yang dijalankan saat tombol login ditekan
                    // Anda dapat menambahkan logika login di sini
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity,
                        48)), // Mengatur lebar dan tinggi tombol
                  ),
                  child: Text('Login'), // Teks pada tombol login
                ),
                SizedBox(
                  height: 16, // Jarak antara tombol login dan tombol register
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi yang dijalankan saat tombol register ditekan
                    // Anda dapat menambahkan logika untuk pindah ke halaman pendaftaran di sini
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity,
                        48)), // Mengatur lebar dan tinggi tombol
                  ),
                  child: Text('Register'), // Teks pada tombol register
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    // Tambahkan fungsi yang ingin dijalankan saat teks diklik
                  },
                  child: Text(
                    'forgot password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: const [
                Text(
                  'Login with Touch ID',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 55,
            child: Image(
              image: AssetImage('assets/images/finger.png'),
            ),
          ),
        ],
      ),
    );
  }
}
