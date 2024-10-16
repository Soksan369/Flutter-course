class Point {
  //declera the variable _x and _y  to private
  final int _x; 
  final int _y;

  const Point (this._x, this._y);
  int get x => _x;
  int get y => _y;
//return  the value of point
  @override
  String toString() {
    return '($_x, $_y)';
  }
}

class Shape {
  final Point leftBottom;
  final int _width;
  final int _height;
  final String? backgroundColor; //declere the variable of background color to nullable because  the background  color is optional

  Shape(this.leftBottom, this._width, this._height,[this.backgroundColor]);

  Point get rightTop {
    return Point(leftBottom.x + _width, leftBottom.y + _height);
  }

  @override
  String toString() {
    return 'Shape(leftBottom: $leftBottom, width: $_width, height: $_height, backgroundColor: $backgroundColor, rightTop: $rightTop)';
  }
}

void main() {
  //Test with background color
  Point point1 = Point(2, 3);
  Shape shape1 = Shape(point1, 5, 5, 'green');
  print(shape1);
  //Test without background color
  Point point2 = Point(-1, -1);
  Shape shape2 = Shape(point2, 3, 3);
  print(shape2);
  // it's optional so it not required the value if you don't want to assign the value the result will null.
}