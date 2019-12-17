import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:getteam4web/data/models/person_model.dart';

class PeopleModel extends ChangeNotifier {
  final List<PersonModel> _people = [];

  UnmodifiableListView<PersonModel> get people => UnmodifiableListView(_people);

  void add(PersonModel person) {
    _people.add(person);
    notifyListeners();
  }
}