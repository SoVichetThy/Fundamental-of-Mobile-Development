// Class Tree
class Tree {
  String type;
  double height;

  Tree(this.type, this.height);
}

class Window {
  String material;
  String color;
  double size;
  int panel;

  Window({
    required this.material,
    required this.color,
    required this.size,
    required this.panel,
  });
}

class Door {
  String material;
  String color;
  double size;
  String type;
  Door({
    required this.material,
    required this.color,
    required this.size,
    required this.type,
  });
}

class Roof {
  String material;
  String color;

  Roof({
    required this.color,
    required this.material,
  });
}

class Chimney {
  String material;
  String color;
  double height;
  Chimney({
    required this.color,
    required this.material,
    required this.height,
  });
}

class House {
  String address;
  List<Tree> trees = [];
  List<Door> doors = [];
  List<Window> windows = [];
  List<Roof> roofs = [];
  List<Chimney> chimneys = [];

  House(this.address);

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }

  void addDoor(Door newDoor) {
    this.doors.add(newDoor);
  }

  void addRoof(Roof newRoof) {
    this.roofs.add(newRoof);
  }

  void addChimney(Chimney newChimney) {
    this.chimneys.add(newChimney);
  }

  void addWindow(Window newWindow) {
    this.windows.add(newWindow);
  }

  @override
  String toString() {
    return '----\nLocation of the house where located by the address of $address \n such as Roof: ${roofs.length}\n Door: ${doors.length} \n Chimney: ${chimneys.length}, \n Tree: ${trees.length} \n Window: ${windows.length}\n----';
  }
}

void main() {
  final House first_house = House('Prekleap, CADT');

  first_house.addChimney(Chimney(color: '#f4f4f4', material: 'Tile', height: 100));
  first_house.addDoor(
      Door(color: '#303030', material: 'Wood', size: 90, type: 'Sliding Door'));
  first_house.addWindow(
      Window(material: 'Glass', color: "blue", size: 110, panel: 4));
  first_house.roofs.add(Roof(color: '#909090', material: 'Concrete'));
  first_house.addTree(Tree('Palm', 15.0));
  print(first_house);

  final House second_house = House('BeungKengKorng, Tonglebasak, KhanChomKaMorn');

  second_house
      .addChimney(Chimney(color: '#121212', material: 'Brick', height: 120));
  second_house.addDoor(
      Door(color: '#505050', material: 'Steel', size: 95, type: 'Handle Door'));
  second_house.addWindow(Window(
      material: 'Tinted Glass', color: "blue", size: 150, panel: 3));
  second_house.addWindow(Window(
      material: 'Lime Glass', color: "cyan", size: 140, panel: 1));
  second_house.addWindow(Window(
      material: 'Solid Glass', color: "green", size: 160, panel: 1));
  second_house.roofs.add(Roof(color: '#707070', material: 'Clay'));
  second_house.addTree(Tree('Oak', 10.0));
  print(second_house);
}