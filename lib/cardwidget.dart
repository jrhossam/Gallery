import 'package:flutter/material.dart';

Widget CardShape(String imgurl, String title, String location) {
  return Hero(
    tag: 'box-$location',
    child: Material(
      color: Colors.transparent,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: 220.0,
          height: 300.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imgurl),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6.0),
                Text(
                  location,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var round = 40.0;
    path.moveTo(round * 0, round * 2);
    path.quadraticBezierTo(0, round * 3, 0, round * 4);
    path.lineTo(0, size.height - round);
    path.quadraticBezierTo(0, size.height, round, size.height);
    path.lineTo(size.width - round, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - round);
    path.lineTo(size.width, round * 1.5);
    path.quadraticBezierTo(size.width, 0, round * -8, round * 2);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}