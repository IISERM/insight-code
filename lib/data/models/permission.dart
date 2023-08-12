import 'package:flutter/foundation.dart';

class Permission{

  final String name;
  final String id;
  final List<Key> widgetKeys;

  Permission({
    required this.name,
    required this.id,
    required this.widgetKeys
  });

}