abstract class Shape {
  double area();
}

class Circle extends Shape {
  final double radius;
  Circle({required this.radius});

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  final double length, width;
  Rectangle({required this.length, required this.width});

  @override
  double area() {
    return length * width;
  }
}

void main() {
  final circle = Circle(radius: 10);
  final rectangle = Rectangle(length: 10, width: 5);

  double calculateArea(Shape shape) {
    return shape.area();
  }

  print('Circle area: ${calculateArea(circle)}'); 
  print(
      'Rectangle area: ${calculateArea(rectangle)}'); 
}