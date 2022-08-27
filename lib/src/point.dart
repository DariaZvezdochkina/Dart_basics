import 'dart:math';

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.one() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point another) {
    return sqrt((pow(another.x - x, 2) + pow(another.y - y, 2)) +
        (pow(another.z - z, 2)));
  }

  double calculateTriangleSquare(Point a, Point b, Point c) {
    final A = c.distanceTo(b);
    final B = a.distanceTo(c);
    final C = a.distanceTo(b);

    final p = (A + B + C) / 2;
    return sqrt(p * (p - A) * (p - B) * (p - C));
  }
}
