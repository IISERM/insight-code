enum Hostel{
  H3,
  H4,
  H5,
  H6,
  H7,
  H8
}

class Room{

  final Hostel hostel;
  final int roomNumber;

  Room({
    required this.hostel,
    required this.roomNumber
  });

}