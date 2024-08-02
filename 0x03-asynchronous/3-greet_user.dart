import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = json.decode(userData);
    return "Hello ${userDataMap['username']}";
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  bool cred = await checkCredentials();
  if (cred) {
    print('There is a user: true');
    return await greetUser();
  }
  print('There is a user: false');
  return 'Wrong credentials';
}