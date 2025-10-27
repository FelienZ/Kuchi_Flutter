import 'package:flutter/material.dart';
import 'package:kuchi_flutter/Components/navbtn.dart';

class Herosection extends StatelessWidget {
  const Herosection({
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
                        Navbtn(
                          targetLocation: () {
                            Navigator.pushNamed(context, '/wisatapage');
                          },
                          btnDescription: 'LEBIH BANYAK >',
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
