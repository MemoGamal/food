// ignore_for_file: file_names, non_constant_identifier_names

class Modules {
  String totalTime;
  double rating;
  String image;
  String name;
  String description;
  Modules(
      {required this.totalTime,
      required this.rating,
      required this.image,
      required this.name,required this.description,});

  late factory Modules.fromjson(dynamic json) {
    return Modules(
        totalTime: json["details"]["totalTime"] as String,
        rating: json["details"]["rating"]as double,
        image: json["details"]["images"][0]["hostedLargeUrl"] as String,
        name: json["details"]["name"]as String,
        description: json["description"]["text"] as String,
        );
        
  }
  static List<Modules> moduleFromSnapShot(List SnapShot) {
    return SnapShot.map((data) {
      return Modules.fromjson(data);
    }).toList();
  }
   @override
  String toString() {
    return 'Modules {name: $name, image: $image, rating: $rating, totalTime: $totalTime}';
  }
}
