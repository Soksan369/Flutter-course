class Point {
  final double _x;
  final double _y;

  const Point(this._x, this._y);

  double get x => _x;
  double get y => _y;

  Point translate(double deltaX, double deltaY) {
    return Point(_x + deltaX, _y + deltaY);
  }

  @override
  String toString() {
    return '($_x, $_y)';
  }
}
void main(){
  Point point1 = Point(2.0, 3.0);
  print('Original position: $point1');
  point1.translate(5.0, -2.0);
  print('New position after translation: $point1');
  
  Point point2 = Point(-1.0, -1.0);
  print('Original position: $point2');
  point2.translate(2.0, 3.0);
  print('New position after translation: $point2');
}