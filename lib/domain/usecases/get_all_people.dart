import 'package:dartz/dartz.dart';
import 'package:getteam4web/core/errors/failures.dart';
import 'package:getteam4web/core/usecases/usecase.dart';
import 'package:getteam4web/data/models/person_model.dart';
import 'package:getteam4web/domain/repositories/getteam_repository.dart';

class GetAllPeople implements UseCase<List<PersonModel>, NoParams> {
  final GetTeamRepository repository;
  GetAllPeople(this.repository);

  @override
  Future<Either<Failure, List<PersonModel>>> call(params) async{
    return await repository.getAllPeople();
  }

}
