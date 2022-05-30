
class Source {
  String id;
  String name;

  //constructor
  Source({
    this.id,
    this.name});

  //factory function to map the json
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(id: json['id'], name: json['name']);
  }
}
