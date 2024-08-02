import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  return fetchUserData().then((user) => json.decode(user)['id']);
}
