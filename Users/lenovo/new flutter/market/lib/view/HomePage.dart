import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Kontainer',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: InkWell(
            onTap: () {
              // Tindakan ketika ikon ditekan
            },
            child: Image.asset(
              'assets/images/icon.png',
              width: 300,
              height: 300,
            ),
          ),
        ),
        endDrawer: Drawer(
          // Side navigation (drawer) di sisi kanan
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  'Side Navigation',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Beranda'),
                onTap: () {
                  // Tindakan ketika menu Beranda ditekan
                  Navigator.pop(
                      context); // Menutup side navigation setelah dipilih
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Pengaturan'),
                onTap: () {
                  // Tindakan ketika menu Pengaturan ditekan
                  Navigator.pop(
                      context); // Menutup side navigation setelah dipilih
                },
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/b-1.png'), // Gambar untuk latar belakang
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.all(50.0),
              child: Stack(
                children: [
                  const Align(
                    child: Text(
                      'Banner di sini!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: const Alignment(4, 3),
                            child: Image.asset(
                              'assets/images/img1.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Align(
                            alignment: const Alignment(3, 3),
                            child: Image.asset(
                              'assets/images/img1.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              // Tambahkan widget-body halaman di sini
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0, bottom: 10),
                    child: Text('With Icon, Fade true, & SlideDirection.up'),
                  ),
                  SlideCountdown(
                    duration: defaultDuration,
                    padding: defaultPadding,
                    slideDirection: SlideDirection.up,
                    icon: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.alarm,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const defaultDuration = Duration(days: 2, hours: 2, minutes: 30);
const defaultPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 5);
