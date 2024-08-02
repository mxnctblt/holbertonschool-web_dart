import '2-util.dart';
import 'dart:convert';

Future<void> getUser() async {
  try {
    String userData = await fetchUser();
    print(userData);
  } catch (err) {
    print("error caught: $err");
  }
}