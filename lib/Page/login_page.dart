import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/home_screens.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Bagian atas dengan 2 tombol
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol kiri ditekan
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/indonesia_round_icon_64.png',
                            height: 25,
                          ),
                          Image.asset(
                            'assets/images/united_kingdom_round_icon_64.png',
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol kanan ditekan
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/images/credit-card.png'),
                          Image.asset('assets/images/jakcard.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Bagian tengah dengan gambar dan teks
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/G-monas.png',
                      width: 500,
                    ),
                    const Text(
                      'Explore Jakarta With Jakarta Tourist Pass',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.orange, Colors.deepOrange],
                          ),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.yellow,
                            width: 2,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreens()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 24.0),
                            child: Text(
                              'Continue as a Guest',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.orange,
                            width: 2,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 24.0),
                            child: Text(
                              'Continue as a Guest',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // Aksi ketika tombol di ujung bawah kanan ditekan
              },
              child: Image.asset(
                'assets/images/bt-help.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
