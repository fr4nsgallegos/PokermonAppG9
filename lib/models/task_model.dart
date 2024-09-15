// To parse this JSON data, do
//
//     final task = taskFromJson(jsonString);

class Task {
  String id;
  String? createdAt;
  String name;
  String? avatar;
  String? a;
  String? query;
  String? username;
  String? password;

  Task({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
    this.a,
    this.query,
    this.username,
    this.password,
  });

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        id: json["id"],
        createdAt: json["createdAt"],
        name: json["name"],
        avatar: json["avatar"],
        a: json["a"],
        query: json["query"],
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt,
        "name": name,
        "avatar": avatar,
        "a": a,
        "query": query,
        "username": username,
        "password": password,
      };
}
