enum eProduct{
 dart(title: "Dart", description: "the best object langaue", image: "assets/img/dart.png"),
 flutter(title: "Flutter", description: "the best mobile widget libary", image: "assets/img/firebase.png"),
 firebase(title: "Firebase", description: "the best cloud database", image: "assets/img/flutter.png");

final String title;
final String description;
final String image;

const eProduct({
  required this.title,
  required this.description,
  required this.image,
});
}

