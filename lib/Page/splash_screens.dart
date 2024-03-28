import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Page/login_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const LoginPage(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.deepOrange],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg-kiri.png',
                width: 500,
                alignment: Alignment.topLeft,
              ),
            ),
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg-kanan.png',
                width: 500,
                alignment: Alignment.bottomRight,
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Image.asset(
                  'assets/images/LogoJakarta.png',
                  width: 500,
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/LogoOJK.png',
                    width: 100,
                    // alignment: Alignment.bottomCenter, // Uncomment this line if you want to align the image to the bottom center
                  ),
                  SizedBox(height: 8),
                  Text(
                    'powered by Bank Dki\n2023',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
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
