class position {
  int x;
  int y;
  position(this.x, this.y);

}
enum Direction { north, east, south, west }
 
void main() {
  // Initial position {4, 1} and facing north
  int x = 4;
  int y = 1;
  Direction direction = Direction.north;

  // Example instruction sequence
  const instructions = "AARAARALA";
  
  // Process the instructions and get the final position and direction
  for (int i = 0; i < instructions.length; i++) {
    if (instructions[i] == "R") {
      switch (direction) {
        case Direction.north:
          direction = Direction.east;
          break;
        case Direction.east:
          direction = Direction.south;
          break;
        case Direction.south:
          direction = Direction.west;
          break;
        case Direction.west:
          direction = Direction.north;
          break;
      }
    } else if (instructions[i] == "L") {
      switch (direction) {
        case Direction.north:
          direction = Direction.west;
          break;
        case Direction.west:
          direction = Direction.south;
          break;
        case Direction.south:
          direction = Direction.east;
          break;
        case Direction.east:
          direction = Direction.north;
          break;
      }
    } else if (instructions[i] == "A") {
      switch (direction) {
        case Direction.north:
          y++;
          break;
        case Direction.east:
          x++;
          break;
        case Direction.south:
          y--;
          break;
        case Direction.west:
          x--;
          break;
      }
    }
  }

  // Print the final position and direction
  print("Final position: ($x, $y)");
  print("Final direction: $direction");

}
