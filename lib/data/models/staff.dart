import 'package:insight/data/models/department.dart';
import 'package:insight/data/models/role.dart';
import 'package:insight/data/models/room.dart';
import 'package:insight/data/models/user.dart';

class Staff{

  final User user;
  final String name;
  final Department department;
  final String position;
  final List<Role> roles;
  final Room? room;

  Staff({
    required this.user,
    required this.name,
    required this.department,
    required this.position,
    required this.roles,
    this.room
  });

}