import 'package:insight/data/models/department.dart';
import 'package:insight/data/models/role.dart';
import 'package:insight/data/models/room.dart';
import 'package:insight/data/models/user.dart';

class Faculty{

  final User user;
  final String name;
  final Department department;
  final String position;
  final Room room;
  final List<Role> roles;

  Faculty({
    required this.user,
    required this.name,
    required this.department,
    required this.position,
    required this.room,
    required this.roles
  });

}