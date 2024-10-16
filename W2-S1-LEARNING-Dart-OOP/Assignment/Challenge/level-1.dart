class Point {
  final int x; 
  final int y;

  Point(this.x, this.y);

  Point translate(int dx, int dy) {
    return Point(x + dx, y + dy);
  }

  String toString() {
    return '($x, $y)';
  }
}
void main(){

  print("Starting point: ${Point(3, 6)}");
  print("After translation: ${Point(3, 6).translate(2, 3)}");

}