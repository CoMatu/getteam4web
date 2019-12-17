import 'dart:js_util';

import 'package:get_it/get_it.dart';
import 'package:getteam4web/data/datasourses/remote_data_source.dart';
import 'package:getteam4web/data/repositories/getteam_repository_impl.dart';
import 'package:getteam4web/domain/repositories/getteam_repository.dart';
import 'package:getteam4web/domain/usecases/get_all_people.dart';

final sl = GetIt.instance;
void init() {
  //!
  //! Use cases
  sl.registerLazySingleton(() => GetAllPeople(sl()));

  //! repository
  sl.registerLazySingleton<GetTeamRepository>(() => GetTeamPRepositoryImpl(remoteDataSource: sl()));

  //! data sources
  sl.registerLazySingleton<GetTeamRemoteDataSource>(() => GetTeamRemoteDataSourceImpl());
}