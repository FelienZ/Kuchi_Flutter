import 'package:flutter/material.dart';

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
