import 'package:insight/data/models/permission.dart';

class Role{

  final String name;
  final List<Permission> permissions;

  Role({
    required this.name,
    required this.permissions
  });

}