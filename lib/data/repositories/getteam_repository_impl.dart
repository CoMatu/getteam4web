import 'package:dartz/dartz.dart';
import 'package:getteam4web/core/errors/failures.dart';
import 'package:getteam4web/data/datasourses/remote_data_source.dart';
import 'package:getteam4web/data/models/person_model.dart';
import 'package:getteam4web/domain/repositories/getteam_repository.dart';
import 'package:meta/meta.dart';

class GetTeamPRepositoryImpl implements GetTeamRepository {
  final GetTeamRemoteDataSource remoteDataSource;

  GetTeamPRepositoryImpl({@required this.remoteDataSource});

  @override
  Future<Either<Failure, List<PersonModel>>> getAllPeople() async {
    return Right(await remoteDataSource.getAllPeople());
  }
}
