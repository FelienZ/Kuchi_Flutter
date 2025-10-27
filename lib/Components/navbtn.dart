import 'package:flutter/material.dart';

class Navbtn extends StatelessWidget {
  const Navbtn({
    super.key,
    required this.targetLocation,
    required this.btnDescription,
  });
  final VoidCallback targetLocation;
  final String btnDescription;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(68, 222, 218, 218),
      ),
      onPressed: targetLocation,
      child: Text(btnDescription, style: TextStyle(color: Colors.white)),
    );
  }
}
