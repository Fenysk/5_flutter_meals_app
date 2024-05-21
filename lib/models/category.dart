import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
String get generatedId =>
    'ctgr_${uuid.v4().trim().replaceAll('-', '').substring(0, 8)}';

class Category {
  Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });

  final String id;
  final String title;
  final Color color;
}
