import 'package:flutter/foundation.dart';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double height;
  double width;
  Rectangle(this.height, this.width);
  @override
  double area() {
    return height * width;
  }
}

void printArea(Shape shape) {
  if (kDebugMode) {
    print('The area is ${shape.area()}');
  }
}
