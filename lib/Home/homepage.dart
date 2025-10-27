import 'package:flutter/material.dart';
import 'package:kuchi_flutter/Home/herosection.dart';
import 'package:kuchi_flutter/Home/highlightsection.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Herosection(
              name: 'WISATAKU',
              location: 'Ciroyom, Bandung',
              deskripsi: 'kazu wisata',
              deskripsi2: 'kuchi tour guide',
            ),
            Highlightsection(
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
