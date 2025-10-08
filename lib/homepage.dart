import 'package:flutter/material.dart';

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
          //Keren Coy bikin Instance class masuk sini galo, jingok contoh di https://docs.flutter.dev/ui/layout/tutorial
          children: [
            TopSection(
              name: 'WISATAKU',
              location: 'Ciroyom, Bandung',
              deskripsi: 'lorem wak',
            ),
            LowSection(),
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
  });

  final String name;
  final String location;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          //bingung ini aseli bikin Background Image
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
                      deskripsi,
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
                          onPressed: () {},
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
  const LowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LOKASI LAINNYA',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/image/wisata-01.jpg',
                        width: 120,
                        height: 120,
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
