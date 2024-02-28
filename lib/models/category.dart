class Category {
  final String id;
  final String name;
  final String? description;
  bool isHovered;
  final String imageUrl;

  Category({required this.id, required this.name, this.description, this.isHovered = false, required this.imageUrl});

  factory Category.fromJson(Map<String, dynamic> json, {String? id}) => Category(
        id: id ?? json['id'] ?? '',
        name: json['name'] ?? '',
        description: json['description'],
        imageUrl: json['imageUrl'] ?? 'https://w0.peakpx.com/wallpaper/410/412/HD-wallpaper-plain-black-black.jpg',
      );
  static List<Category> categories = [
    Category(
      id: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl: 'https://w0.peakpx.com/wallpaper/560/470/HD-wallpaper-basketball-layup-sport-thumbnail.jpg',
    ),
    Category(
      id: '2',
      name: 'Racing',
      description: 'Racing Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/451/320/HD-wallpaper-racing-car-racing-car-sports-car-speed-thumbnail.jpg',
    ),
    Category(
      id: '3',
      name: 'Cycling',
      description: 'Cycling Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/356/906/HD-wallpaper-sick-downhill-mountain-bike-stunt-cycle-thumbnail.jpg',
    ),
    Category(
      id: '4',
      name: 'Jogging',
      description: 'Jogging Category',
      imageUrl: 'https://w0.peakpx.com/wallpaper/677/918/HD-wallpaper-jogging-athlete-morning-run-runner-thumbnail.jpg',
    ),
    Category(
      id: '5',
      name: 'Office',
      description: 'Office Category',
      imageUrl: 'https://w0.peakpx.com/wallpaper/304/531/HD-wallpaper-michel-scott-the-office-thumbnail.jpg',
    ),
    Category(
      id: '6',
      name: 'Playing',
      description: 'Playing Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/744/881/HD-wallpaper-ronaldo-with-messi-playing-chess-ronaldo-playing-chess-lionel-messi-sports-footballer-thumbnail.jpg',
    ),
    Category(
      id: '7',
      name: 'Public Speaking',
      description: 'Public Speaking Category',
      imageUrl: 'https://w0.peakpx.com/wallpaper/549/719/HD-wallpaper-man-speaking-on-stage-thumbnail.jpg',
    ),
    Category(
      id: '8',
      name: 'Drifting',
      description: 'Drifting Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/378/237/HD-wallpaper-formula-drift-pt2-tokyo-cars-formula-drift-car-bmw-drift-toyota-gt86-thumbnail.jpg',
    ),
  ];
}
