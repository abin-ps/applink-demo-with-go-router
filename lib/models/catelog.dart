class Catelog {
  final String id;
  final String categoryId;
  final String name;
  final String? description;
  bool isHovered;
  final String imageUrl;

  Catelog(
      {required this.id,
      required this.categoryId,
      required this.name,
      this.description,
      this.isHovered = false,
      required this.imageUrl});

  factory Catelog.fromJson(Map<String, dynamic> json, {String? id}) => Catelog(
        id: id ?? json['id'] ?? '',
        categoryId: json['category_id'] ?? '',
        name: json['name'] ?? '',
        description: json['description'],
        imageUrl: json['imageUrl'] ?? 'https://w0.peakpx.com/wallpaper/410/412/HD-wallpaper-plain-black-black.jpg',
      );
  static List<Catelog> catelogs = [
    Catelog(
      id: '1',
      categoryId: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/984/45/HD-wallpaper-cricket-ball-bails-football-sports-sports-equipment-thumbnail.jpg',
    ),
    Catelog(
      id: '2',
      categoryId: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl: 'https://w0.peakpx.com/wallpaper/265/1007/HD-wallpaper-tech-cricket-sport-tech-thumbnail.jpg',
    ),
    Catelog(
      id: '3',
      categoryId: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/908/670/HD-wallpaper-dhoni-sports-uniform-cricket-ms-dhoni-mahendra-singh-dhoni-thumbnail.jpg',
    ),
    Catelog(
      id: '4',
      categoryId: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl: 'https://w0.peakpx.com/wallpaper/1005/824/HD-wallpaper-stadium-sports-cricket-thumbnail.jpg',
    ),
    Catelog(
      id: '5',
      categoryId: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/561/709/HD-wallpaper-cristiano-ronaldo-sports-uniform-soccer-manchester-united-manchester-united-football-thumbnail.jpg',
    ),
    Catelog(
      id: '6',
      categoryId: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/192/557/HD-wallpaper-cr7-sporting-cristiano-cristiano-ronaldo-football-portugal-ronaldo-sporting-cp-thumbnail.jpg',
    ),
    Catelog(
      id: '7',
      categoryId: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/249/517/HD-wallpaper-cristiano-ronaldo-champion-sport-ucl-thumbnail.jpg',
    ),
    Catelog(
      id: '8',
      categoryId: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl:
          'https://w0.peakpx.com/wallpaper/726/919/HD-wallpaper-hakimi-and-mbappe-sports-uniform-celebration-football-thumbnail.jpg',
    ),
    Catelog(
      id: '9',
      categoryId: '1',
      name: 'Sports',
      description: 'Sports Category',
      imageUrl: 'https://w0.peakpx.com/wallpaper/333/136/HD-wallpaper-rishabh-pant-sports-thumbnail.jpg',
    ),
    Catelog(
      id: "10",
      categoryId: '1',
      name: "cristiano ronaldo sports uniform graph soccer manchester united manchester united football thumbnail",
      description:
          "HD wallpaper cristiano ronaldo sports uniform graph soccer manchester united manchester united football thumbnail",
      imageUrl:
          "https://w0.peakpx.com/wallpaper/68/829/HD-wallpaper-cristiano-ronaldo-sports-uniform-graph-soccer-manchester-united-manchester-united-football-thumbnail.jpg",
    ),
    Catelog(
      id: "11",
      categoryId: '1',
      name: "tottenham sport spurs thumbnail",
      description: "HD wallpaper tottenham sport spurs thumbnail",
      imageUrl: "https://w0.peakpx.com/wallpaper/553/974/HD-wallpaper-tottenham-sport-spurs-thumbnail.jpg",
    ),
    Catelog(
      id: "12",
      categoryId: '1',
      name: "virat kohli india sports graphics design thumbnail",
      description: "HD wallpaper virat kohli india sports graphics design thumbnail",
      imageUrl:
          "https://w0.peakpx.com/wallpaper/708/753/HD-wallpaper-virat-kohli-india-sports-graphics-design-thumbnail.jpg",
    ),
    Catelog(
      id: "13",
      categoryId: '1',
      name: "msn barcha messi neymar sport suarez thumbnail",
      description: "HD wallpaper msn barcha messi neymar sport suarez thumbnail",
      imageUrl:
          "https://w0.peakpx.com/wallpaper/778/121/HD-wallpaper-msn-barcha-messi-neymar-sport-suarez-thumbnail.jpg",
    ),
    Catelog(
      id: "14",
      categoryId: '1',
      name: "cristiano ronaldo champions cr7 portugal real madrid spain sport thumbnail",
      description: "HD wallpaper cristiano ronaldo champions cr7 portugal real madrid spain sport thumbnail",
      imageUrl:
          "https://w0.peakpx.com/wallpaper/831/180/HD-wallpaper-cristiano-ronaldo-champions-cr7-portugal-real-madrid-spain-sport-thumbnail.jpg",
    ),
    Catelog(
      id: "15",
      categoryId: '1',
      name: "virat kohli sports uniform final hair southampton wtc thumbnail",
      description: "HD wallpaper virat kohli sports uniform final hair southampton wtc thumbnail",
      imageUrl:
          "https://w0.peakpx.com/wallpaper/297/486/HD-wallpaper-virat-kohli-sports-uniform-final-hair-southampton-wtc-thumbnail.jpg",
    ),
    Catelog(
      id: "16",
      categoryId: '1',
      name: "leo messi sport thumbnail",
      description: "HD wallpaper leo messi sport thumbnail",
      imageUrl: "https://w0.peakpx.com/wallpaper/455/12/HD-wallpaper-leo-messi-sport-thumbnail.jpg",
    ),
    Catelog(
      id: "17",
      categoryId: '1',
      name: "cristiano ronaldo manu sports reddevil cr7manu thumbnail",
      description: "HD wallpaper cristiano ronaldo manu sports reddevil cr7manu thumbnail",
      imageUrl:
          "https://w0.peakpx.com/wallpaper/329/448/HD-wallpaper-cristiano-ronaldo-manu-sports-reddevil-cr7manu-thumbnail.jpg",
    ),
  ];
}
