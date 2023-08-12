import 'package:insight/data/models/event.dart';
import 'package:insight/data/models/student.dart';

class Club{
  final String name;
  final Student convener;
  final List<Student> coConvener;
  final List<Student> members;
  final List<Event> events;

  Club({
    required this.name,
    required this.convener,
    required this.coConvener,
    required this.members,
    required this.events
  });

}