import 'package:meta/meta.dart';

class Person {
  final String date;
  final String department;
  final String gender;
  final String middleName;
  final String name;
  final String surname;
  final String position;

  Person({
    @required this.date,
    @required this.department,
    @required this.gender,
    @required this.middleName,
    @required this.name,
    @required this.surname,
    @required this.position,
  });

  Person.fromJson(Map<String, dynamic> json)
      : date = json['name'],
        department = json['department'],
        gender = json['gender'],
        middleName = json['middleName'],
        name = json['name'],
        surname = json['surname'],
        position = json['position'];

  Map<String, dynamic> toJson() => {
        'date': date,
        'department': department,
        'gender': gender,
        'middleName': middleName,
        'name': name,
        'surname': surname,
        'position': position,
      };
}
