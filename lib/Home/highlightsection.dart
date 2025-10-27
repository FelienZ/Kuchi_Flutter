import 'package:flutter/material.dart';
import 'package:kuchi_flutter/Components/listwisata.dart';

class Highlightsection extends StatelessWidget {
  const Highlightsection({
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
    return Column(
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
                  Listwisata(
                    textDescription: teks1,
                    imageUsed: 'assets/image/ikn-1.jpg',
                  ),
                  SizedBox(height: 20),
                  Listwisata(
                    textDescription: teks2,
                    imageUsed: 'assets/image/ikon-1.jpeg',
                  ),
                  SizedBox(height: 20),
                  Listwisata(
                    textDescription: teks3,
                    imageUsed: 'assets/image/logika.jpg',
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
