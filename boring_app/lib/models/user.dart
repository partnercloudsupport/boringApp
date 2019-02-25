class User {
  String id;
  String name;
  String deviceToken;

  User(this.name);


  Map<String, dynamic> toMap() => {'name': name, 'deviceToken': deviceToken};

  User.fromMap(Map<String, dynamic> data) {
      id = data['id'];
      name = data['name'];
      deviceToken = data['deviceToken'];
  }
}
