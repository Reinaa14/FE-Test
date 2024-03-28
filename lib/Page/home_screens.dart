import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    _buildBackground(),
                    _buildTopBar(),
                    _buildProfile(),
                    _buildBalance(),
                    _buildMenu(),
                  ],
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home, color: Colors.deepOrange),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        color: Colors.deepOrange,
                      ),
                      label: "Profile"),
                ],
                elevation: 0, // Set elevation to 0 to remove default shadow
              ),
            ),
          ),
          _buildCenterButton(),
        ],
      ),
    );
  }

  Widget _buildCenterButton() {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Center(
        child: GestureDetector(
          onTap: () {
            // Aksi saat tombol ditekan
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/buttonQris.png', // Ganti dengan path gambar tombol Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(140.0),
        bottomRight: Radius.circular(140.0),
      ),
      child: Container(
        height: 260,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepOrange,
              Colors.orange,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Positioned(
      top: 15,
      left: 0,
      right: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/LogoJakarta.png',
              width: 200,
            ),
          ),
          Row(
            children: [
              _buildIconButton(Icons.search, () {
                // Aksi saat ikon pencarian ditekan
              }),
              SizedBox(width: 10),
              _buildIconButton(Icons.notifications, () {
                // Aksi saat ikon notifikasi ditekan
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Positioned(
      top: 100,
      left: 20,
      right: 20,
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(Icons.person),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning,',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Guest',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBalance() {
    return Positioned(
      top: 180,
      left: 50,
      right: 50,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.0, 0.5],
            colors: [
              Colors.deepOrange,
              Colors.orangeAccent,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance Account',
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
                Text(
                  'Rp 0\n-',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                // Action when button pressed
              },
              child: Text(
                'Top Up',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.deepOrange,
                ),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (states) => states!.contains(MaterialState.hovered)
                      ? Colors.yellow.withOpacity(0.5)
                      : null,
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(
                    color: Colors.yellow,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, void Function()? onPressed) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepOrange,
            Colors.yellow,
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        icon: Icon(icon),
        color: Colors.white,
        onPressed: onPressed,
      ),
    );
  }

  Widget _buildMenu() {
    return Positioned(
      bottom: 20,
      left: 20,
      right: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20), // Spacer agar berada di bawah Top Up Container
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButtonWithImageAndText(
                  'assets/images/Explorejkt.png', 'Explore Jakarta'),
              _buildButtonWithImageAndText(
                  'assets/images/Topup.png', 'Top Up JakCard'),
              _buildButtonWithImageAndText(
                  'assets/images/jakbalance.png', 'Jak Balance'),
              _buildButtonWithImageAndText(
                  'assets/images/event 1.png', 'Event'),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 120, // Sesuaikan tinggi sesuai kebutuhan
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildImage('assets/images/banner.png'),
                _buildImage('assets/images/banner.png'),
                _buildImage('assets/images/banner.png'),
                // Tambahkan gambar lainnya di sini jika diperlukan
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        imagePath, // Sesuaikan tinggi gambar sesuai kebutuhan
      ),
    );
  }

  Widget _buildButtonWithImageAndText(String imagePath, String text) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 4,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(
            imagePath,
            width: 10,
            height: 10,
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
