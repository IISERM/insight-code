import 'package:insight/data/models/department.dart';
import 'package:insight/data/models/permission.dart';
import 'package:insight/data/models/role.dart';
import 'package:insight/data/models/room.dart';
import 'package:insight/data/models/user.dart';

class Student{

  final User user;
  final String userName;
  final String registrationNumber;
  final Department department;
  final String? profilePicture;
  final String? phoneNumber;
  final Room? room;
  final String? discordUserName;
  final List<Role>? roles;
  final List<Permission>? permissions;

  Student({
    required this.user,
    required this.userName,
    required this.registrationNumber,
    required this.department,
    this.profilePicture,
    this.phoneNumber,
    this.room,
    this.discordUserName,
    this.roles,
    this.permissions
  });

}