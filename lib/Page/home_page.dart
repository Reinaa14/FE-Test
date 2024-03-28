import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHomePage = true; // Simpan status halaman beranda di sini

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 70, 17),
        title: Row(
          children: [
            Image.asset(
              'assets/images/LogoJakarta.png', // Ganti dengan path logo Anda
              height: 40,
            ),
            SizedBox(width: 8),
            Spacer(), // Spacer untuk memberikan jarak di antara logo dan button icon
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange, // Warna latar belakang bulat
              ),
              child: IconButton(
                onPressed: () {
                  // Aksi saat tombol pertama ditekan
                },
                icon: Icon(
                    Icons.search), // Icon untuk tombol pertama (contoh: search)
              ),
            ),
            SizedBox(width: 8),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange, // Warna latar belakang bulat
              ),
              child: IconButton(
                onPressed: () {
                  // Aksi saat tombol kedua ditekan
                },
                icon: Icon(Icons
                    .notifications), // Icon untuk tombol kedua (contoh: notifications)
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: BottomClipper(),
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 241, 70, 17),
                    Colors.orange,
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  //keterangan Profile
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(Icons.person),
                      ),
                      SizedBox(width: 10),
                      const Column(
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
                ),
                Container(
                  //container Balance
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
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
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (states) => states.contains(MaterialState.hovered)
                                ? Colors.yellow.withOpacity(0.5)
                                : null,
                          ),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(
                              color: const Color.fromARGB(255, 223, 202, 15),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  //row menu
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(
                                    colors: [Colors.yellow, Colors.orange]),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.white,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.deepOrange.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: Image.asset('assets/images/Explorejkt.png'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Explore Jakarta',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(
                                    colors: [Colors.yellow, Colors.orange]),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.white,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.deepOrange.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: Image.asset('assets/images/Topup.png'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Top Up JackCard',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(
                                    colors: [Colors.yellow, Colors.orange]),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.white,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.deepOrange.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: Image.asset('assets/images/jakbalance.png'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'JakCard Balance',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(
                                    colors: [Colors.yellow, Colors.orange]),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.white,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.deepOrange.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: Image.asset('assets/images/event 1.png'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Event',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        //body
                        Expanded(
                            child: ListView(
                          // padding: const EdgeInsets.symmetric(horizontal: 10),
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ItemTerbaru(
                                    image: "assets/images/banner.png",
                                  ),
                                  ItemTerbaru(
                                    image: "assets/images/banner.png",
                                  ),
                                  ItemTerbaru(
                                    image: "assets/images/banner.png",
                                  ),
                                  ItemTerbaru(
                                    image: "assets/images/banner.png",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              //tourist row
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Image.asset(
                                      'assets/images/bt-kiritouris.png'),
                                ),
                                SizedBox(width: 8),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Events in Jakarta',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                          height:
                                              4), // Jarak antara teks dan tombol
                                      Text(
                                        'Don\'t miss the current events',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                    width:
                                        8), // Jarak antara teks dan tombol View All
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: TextButton(
                                    onPressed: () {
                                      // Action when button pressed
                                    },
                                    child: const Text(
                                      'View All',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            SingleChildScrollView(
                              //tourist row
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Image.asset(
                                      'assets/images/gb-maps-tourist.png'),
                                  _buildItem(
                                    image: 'assets/images/gb-touris.png',
                                    title: 'Item 1',
                                    description: 'Description for Item 1',
                                    buttonText: 'Button 1',
                                  ),
                                  _buildItem(
                                    image: 'assets/images/gb-touris.png',
                                    title: 'Item 2',
                                    description: 'Description for Item 2',
                                    buttonText: 'Button 2',
                                  ),
                                  _buildItem(
                                    image: 'assets/images/gb-touris.png',
                                    title: 'Item 3',
                                    description: 'Description for Item 3',
                                    buttonText: 'Button 3',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              //event row
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Image.asset(
                                      'assets/images/bt-kirievent.png'),
                                ),
                                SizedBox(width: 8),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Events in Jakarta',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                          height:
                                              4), // Jarak antara teks dan tombol
                                      Text(
                                        'Don\'t miss the current events',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    width: 8), // Jarak antara teks dan tombol
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: TextButton(
                                    onPressed: () {
                                      // Action when button pressed
                                    },
                                    child: const Text(
                                      'View All',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10), //Events scroll
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  _buildItemevent(
                                    image: 'assets/images/gb-events.png',
                                    buttonText: 'Button 1',
                                  ),
                                  _buildItemevent(
                                    image: 'assets/images/gb-events.png',
                                    buttonText: 'Button 2',
                                  ),
                                  _buildItemevent(
                                    image: 'assets/images/gb-events.png',
                                    buttonText: 'Button 3',
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),

                        Container(
                          //Navigation
                          margin: const EdgeInsets.only(bottom: 10),
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 4,
                                offset: Offset(0, -3),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 70, vertical: 10),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.home,
                                        size: 40,
                                        color: isHomePage
                                            ? Colors.deepOrange
                                            : Colors
                                                .orange, // Ubah warna ikon beranda sesuai status
                                      ),
                                      onPressed: () {
                                        // Aksi saat tombol beranda ditekan
                                        setState(() {
                                          isHomePage =
                                              true; // Set status beranda menjadi true
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 70, vertical: 10),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.person,
                                        size: 40,
                                        color: isHomePage
                                            ? Colors.orange
                                            : Colors
                                                .deepOrange, // Ubah warna ikon halaman profil sesuai status
                                      ),
                                      onPressed: () {
                                        // Aksi saat tombol profil ditekan
                                        setState(() {
                                          isHomePage =
                                              false; // Set status beranda menjadi false
                                        });
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildCenterButton()
        ],
      ),
    );
  }
}

Widget _buildItemevent({
  required String image,
  required String buttonText,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      // Action when button pressed
                    },
                    child: Text(
                      'More Information',
                      style: TextStyle(color: Colors.white, fontSize: 9),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepOrange,
                      ),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => states.contains(MaterialState.hovered)
                            ? Colors.yellow.withOpacity(0.5)
                            : null,
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 3.0, horizontal: 6.0),
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
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildItem({
  required String image,
  required String title,
  required String description,
  required String buttonText,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Action when button pressed
                    },
                    child: Text(
                      'Detail',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepOrange,
                      ),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => states.contains(MaterialState.hovered)
                            ? Colors.yellow.withOpacity(0.5)
                            : null,
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 3.0, horizontal: 6.0),
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
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildCenterButton() {
  return Positioned(
    bottom: 50,
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

Widget _buildButtonWithImageAndText(String imagePath, String text) {
  return InkWell(
    onTap: () {
      // Aksi saat tombol ditekan
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.transparent, // Membuat latar belakang transparan
          ),
          child: Image.asset(
            imagePath,
            width: 30,
            height: 30,
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
    ),
  );
}

class ItemTerbaru extends StatelessWidget {
  ItemTerbaru({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
