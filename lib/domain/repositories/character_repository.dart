import 'package:dartz/dartz.dart';
import 'package:naruto_app/common/errors/failures.dart';
import 'package:naruto_app/domain/entities/character.dart';

abstract class CharacterRepository {
  Future<Either<Failure, List<Character>>> getAllCharacters();
  Future<Either<Failure, Character>> getCharacterById(int id);
}