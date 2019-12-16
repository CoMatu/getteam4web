import 'package:getteam4web/domain/entities/person.dart';
import 'package:meta/meta.dart';

class PersonModel extends Person {
  String date;
  String department;
  String gender;
  String middleName;
  String name;
  String surname;
  String position;

  PersonModel({
    @required String date,
    @required String department,
    @required String gender,
    @required String middleName,
    @required String name,
    @required String surname,
    @required String position,
  }) : super(
          date: date,
          department: department,
          gender: gender,
          middleName: middleName,
          name: name,
          surname: surname,
          position: position,
        );

  PersonModel.fromJson(Map<String, dynamic> json)
      : date = json['date'],
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
