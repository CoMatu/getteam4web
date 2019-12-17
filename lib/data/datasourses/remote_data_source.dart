import 'package:getteam4web/data/models/person_model.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase/firestore.dart';

abstract class GetTeamRemoteDataSource {
  Future<List<PersonModel>> getAllPeople();
}

class GetTeamRemoteDataSourceImpl implements GetTeamRemoteDataSource {
  final String collectionPath = 'persons';

  @override
  Future<List<PersonModel>> getAllPeople() async {
    Firestore store = firestore();
    List<PersonModel> personList = [];

    QuerySnapshot res = await store.collection('persons').get();
    res.forEach((d) => personList.add(PersonModel.fromJson(d.data())));

    return personList;
  }
}
