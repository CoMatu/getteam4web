import 'package:getteam4web/data/models/person_model.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase/firestore.dart' as fs;

abstract class GetTeamRemoteDataSource {
  Future<List<PersonModel>> getAllPeople();
}

class GetteamRemoteDataSourceImpl implements GetTeamRemoteDataSource {
  final String collectionPath = 'persons';

  @override
  Future<List<PersonModel>> getAllPeople() async {
    fs.Firestore store = firestore();
    fs.CollectionReference reference = store.collection(collectionPath);
    var res = reference.onSnapshot.toList(); 
    print(res.toString());

    return null;
  }
}
