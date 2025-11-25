import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({required this.text, required this.colors, required this.onTap});
  String? text;
  List<Color> colors;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: AlignmentGeometry.bottomRight,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              text!,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
