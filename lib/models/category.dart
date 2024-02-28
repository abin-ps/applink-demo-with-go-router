class Category {
  final String id;
  final String name;
  final String? description;
  final String imageUrl;

  const Category({required this.id, required this.name, this.description, required this.imageUrl});

  factory Category.fromJson(Map<String, dynamic> json, {String? id}) => Category(
        id: id ?? json['id'] ?? '',
        name: json['name'] ?? '',
        description: json['description'],
        imageUrl: json['imageUrl'] ?? 'https://w0.peakpx.com/wallpaper/410/412/HD-wallpaper-plain-black-black.jpg',
      );
  static List<Category> categories = const [
    Category(
      id: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl: '',
    ),
    Category(
      id: '2',
      name: 'Racing',
      description: 'Racing Category',
      imageUrl: '',
    ),
    Category(
      id: '3',
      name: 'Cycling',
      description: 'Cycling Category',
      imageUrl: '',
    ),
    Category(
      id: '4',
      name: 'Jogging',
      description: 'Jogging Category',
      imageUrl: '',
    ),
    Category(
      id: '5',
      name: 'Office',
      description: 'Office Category',
      imageUrl: '',
    ),
    Category(
      id: '6',
      name: 'Playing',
      description: 'Playing Category',
      imageUrl: '',
    ),
    Category(
      id: '7',
      name: 'Public Speaking',
      description: 'Public Speaking Category',
      imageUrl: '',
    ),
    Category(
      id: '8',
      name: 'Drifting',
      description: 'Drifting Category',
      imageUrl: '',
    ),
  ];
}
