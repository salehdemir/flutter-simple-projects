import 'dart:io';

class User {
  final String id;
  final String title;
  final File image;
  User({
    required this.id,
    required this.title,
    required this.image,
  });
}
