import 'dart:ui';

class Categories {
  final String id;
  final String name;
  final String urlIcon;
  final String urlImage;
  final String colors;
  final String profession;
  final String appointment;
  final String available;
  Categories(
      {this.available,
      this.appointment,
      this.profession,
      this.colors,
      this.id,
      this.name,
      this.urlIcon,
      this.urlImage});
}

final dummyCategories = [
  Categories(
    name: "Teeth",
    urlIcon: "images/teeth2.jpg",
    urlImage: "images/teeth.png",
  ),
  Categories(
    name: "Pregnancy",
    urlIcon: "images/pregnant.png",
    urlImage: "images/pregnant2.jpg",
  ),
  Categories(
    name: "Eye",
    urlIcon: "images/eyeconsultation.jpg",
    urlImage: "images/view.jpg",
  ),
  Categories(
    name: "Clinical Psychology",
    urlIcon: "images/consultation.jpg",
    urlImage: "images/mentalidea.jpg",
  ),
];
final detailList = [
  Categories(
    id: "ffe1",
    urlImage: "images/clock.jpg",
    colors: '${0xFFF4DBC2}',
    profession: "Doctor",
    appointment: "Book an Appointment",
    available: "50 Doctors Available",
  ),
  Categories(
    id: "ffe2",
    urlImage: "images/stethoscope.jpg",
    colors: '${0xFFB9D606}',
    profession: "Test & CheckUp",
    appointment: "Lab Test & CheckUp",
    available: "43 Diognostic are available",
  ),
  Categories(
    id: "ffe3",
    urlImage: "images/videocall.jpg",
    colors: '${0xFFF3AC76}',
    profession: "Event & Health Seminar",
    appointment: "Video Conference",
    available: "5 Conference coming up",
  ),
  Categories(
    id: "ffe4",
    urlImage: "images/index.png",
    colors: '${0xFFF}',
    profession: "Chat & Video Call",
    appointment: "Online Health Consult",
    available: "Get Help with chat and video call",
  ),
 ];
