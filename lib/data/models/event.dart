import 'package:flutter_map/flutter_map.dart';
import 'package:insight/data/models/club.dart';
import 'package:insight/data/models/user.dart';

class Event{
  final String name;
  final DateTime time;
  final List<Marker> venue;
  final List<Club>? club;
  final List<User>? organizers;

  Event({
    required this.name,
    required this.time,
    required this.venue,
    this.club,
    this.organizers
  });

}