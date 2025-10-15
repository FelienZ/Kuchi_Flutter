import 'package:flutter/material.dart';
import 'second_route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Kuchi Flutter - Demo';
    return MaterialApp(
      //Ini Title Window
      title: appTitle,
      home: Scaffold(
        //ini Appbar + title pakai sama seperti di window
        // appBar: AppBar(title: const Text(appTitle)),
        body: Column(
          //contoh di https://docs.flutter.dev/ui/layout/tutorial
          children: [
            TopSection(
              name: 'WISATAKU',
              location: 'Ciroyom, Bandung',
              deskripsi: 'kazu wisata',
              deskripsi2: 'kuchi tour guide',
            ),
            LowSection(
              judul: 'LOKASI LAINNYA',
              teks1: 'Wisata IKN',
              teks2: 'Wisata Patung Raja Java',
              teks3: 'Pikir Secara Logika Ayo',
            ),
          ],
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.name,
    required this.location,
    required this.deskripsi,
    required this.deskripsi2,
  });

  final String name;
  final String location;
  final String deskripsi;
  final String deskripsi2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/wisata-01.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        //Ini Buat Overlay/ timpa background dgn teks
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 8,
                    ),
                  ),
                ),
              ),
              //Spasi Manual bzir
              SizedBox(height: 300),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          location,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(Icons.favorite, color: Colors.white),
                            Icon(Icons.favorite, color: Colors.white),
                            Icon(Icons.favorite, color: Colors.white),
                            Icon(Icons.favorite, color: Colors.white),
                            Icon(
                              Icons.favorite,
                              color: const Color.fromARGB(102, 255, 255, 255),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      height: 2,
                      color: Colors.white,
                    ),
                    SizedBox(height: 5),
                    Text(
                      deskripsi,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      deskripsi2,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(68, 222, 218, 218),
                            // shadowColor: const Color.fromARGB(255, 94, 3, 3),
                            // textStyle: TextStyle(color: Colors.white),
                          ),
                          // Within the `FirstRoute` widget:
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => const SecondRoute(),
                              ),
                            );
                          },
                          child: Text(
                            'LEBIH BANYAK >',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LowSection extends StatelessWidget {
  const LowSection({
    super.key,
    required this.judul,
    required this.teks1,
    required this.teks2,
    required this.teks3,
  });

  final String judul;
  final String teks1;
  final String teks2;
  final String teks3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/image/ikn-1.jpg',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        teks1,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/image/ikon-1.jpeg',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        teks2,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/image/logika.jpg',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        teks3,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
