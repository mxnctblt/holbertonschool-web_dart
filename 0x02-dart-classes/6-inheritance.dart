import '6-password.dart';

class User extends Password {
  String name;
  int age;
  double height;
  int id;
  String user_password;

  User({
    required this.nq;e,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : super(password: user_password) {
    this.user_password = user_password;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  @override
  String toString(){
    Password password = Password(password: user_password);
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${password.isValid()})";
  }
}