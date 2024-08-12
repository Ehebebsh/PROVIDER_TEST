import 'package:flutter/foundation.dart';

class User {
  String name;
  String email;

  User({required this.name, required this.email});
}

class UserProvider extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  void updateUser(User newUser) {
    _user = newUser;
    notifyListeners();
  }
}
