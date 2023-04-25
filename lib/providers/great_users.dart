import 'dart:io';

import 'package:flutter/foundation.dart';
import '../models/user.dart';

class GreatUsers with ChangeNotifier {
  List<User> _items = [];
  List<User> get items {
    return [..._items];
  }

  void addUser(
    String pickedTitle,
    File pickedImage,
  ) {
    final newUser = User(
      id: DateTime.now().toString(),
      title: pickedTitle,
      image: pickedImage,
    );
    _items.add(newUser);
    notifyListeners();
  }
}
