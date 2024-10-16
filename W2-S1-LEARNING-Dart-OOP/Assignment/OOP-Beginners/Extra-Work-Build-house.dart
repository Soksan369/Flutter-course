class Window {
  int number;
  String color;

  Window(this.number, this.color);

  String toString() {
    return 'Window: $number, $color';
  }
}

class Roof {
  String type;

  Roof(this.type);

  String toString() {
    return 'Roof: $type';
  }
}

class Door {
  String location;

  Door(this.location);

  String toString() {
    return 'Door: $location';
  }
}

class House {
  bool? chimney ;
  List<Window> windows = [];  // by default empty
  List<Roof> roof = [];
  List<Door> door = [];
  House({this.chimney});

  void addWindow(Window newWindow){
    this.windows.add(newWindow);
  }
  void addRoof(Roof newRoof){
    this.roof.add(newRoof);
  }
  void addDoor(Door newDoor){
    this.door.add(newDoor);
  }

  String toString() {
    return 'House: $chimney, $windows, $roof, $door';
  }

}

void main() {
  // Test My own house 
  var myHouse = House(chimney: true);
  var myWindow = Window(4, 'red');
  var myRoof = Roof('Triangler');
  var myDoor = Door('center');
  myHouse.addWindow(myWindow);
  myHouse.addRoof(myRoof);
  myHouse.addDoor(myDoor);
  print("My owned House: $myHouse");
}