import 'package:dartz/dartz.dart';
import 'package:naruto_app/common/errors/exceptions.dart';
import 'package:naruto_app/common/errors/failures.dart';
import 'package:naruto_app/common/utils/connection_checker.dart';
import 'package:naruto_app/data/datasources/characters_remote.dart';
import 'package:naruto_app/domain/entities/character.dart';
import 'package:naruto_app/domain/repositories/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharactersRemoteData remoteData;
  final InternetConnectionChecker connectionChecker;

  CharacterRepositoryImpl(
      {required this.remoteData, required this.connectionChecker});

  @override
  Future<Either<Failure, List<Character>>> getAllCharacters() async {
    if (await connectionChecker.hasConnection) {
      try {
        final characterList = await remoteData.getAllCharacters();
        return Right(characterList);
      } on ServerException {
        return const Left(ServerFailure());
      }
    } else {
      return const Left(ServerFailure());
    }
  }
  
  @override
  Future<Either<Failure, Character>> getCharacterById(int id) {
    // TODO: implement getCharacterById
    throw UnimplementedError();
  }
}
