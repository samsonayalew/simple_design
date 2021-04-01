import 'package:flutter/material.dart';

class Clipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = _getStarPath(size);
    return path;
  }

  Path _getStarPath(Size size){
    var path = Path();
    path.lineTo(0.0, size.height);
    var firstControlPoint = Offset(60, size.height / 2);
    var firstEndPoint = Offset(size.width / 1.7, size.height / 1.3);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondControlPoint = Offset(size.width, size.width / 2);
    var secondEndPoint = Offset(size.width, size.width / 2);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.width/ 2);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
  
}