import 'package:flutter/material.dart';

class Listwisata extends StatelessWidget {
  const Listwisata({
    super.key,
    required this.textDescription,
    required this.imageUsed,
  });
  final String textDescription;
  final String imageUsed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Image.asset(imageUsed, width: 80, height: 80),
        ),
        SizedBox(width: 20),
        Text(
          textDescription,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
