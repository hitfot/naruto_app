import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:naruto_app/common/utils/connection_checker.dart';
import 'package:naruto_app/data/datasources/characters_remote.dart';
import 'package:naruto_app/data/repositories/character_repository_impl.dart';
import 'package:naruto_app/domain/repositories/character_repository.dart';
import 'package:naruto_app/domain/usecase/get_all_characters.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerLazySingleton(() => GetAllCharacters(getIt()));

  getIt.registerLazySingleton<CharacterRepository>(() =>
      CharacterRepositoryImpl(remoteData: getIt(), connectionChecker: getIt()));
  
  getIt.registerLazySingleton<CharactersRemoteData>(() => CharactersRemoteDataImpl(dio: getIt()));

  final Dio dio = Dio();
  getIt.registerLazySingleton(() => dio);
  getIt.registerLazySingleton(() => InternetConnectionChecker.getInstance());
}
