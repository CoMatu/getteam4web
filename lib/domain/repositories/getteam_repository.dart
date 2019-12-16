import 'package:dartz/dartz.dart';
import 'package:getteam4web/core/errors/failures.dart';
import 'package:getteam4web/data/models/person_model.dart';

abstract class GetTeamRepository {
  Future<Either<Failure, List<PersonModel>>> getAllPeople();
}