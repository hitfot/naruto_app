import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:naruto_app/common/errors/failures.dart';
import 'package:naruto_app/domain/entities/character.dart';
import 'package:naruto_app/domain/repositories/character_repository.dart';
import 'package:naruto_app/domain/usecase/usecase.dart';

class GetAllCharacters extends UseCase<List<Character>, GetAllCharactersParams> {
  final CharacterRepository characterRepository;

  GetAllCharacters(this.characterRepository);

  @override
  Future<Either<Failure, List<Character>>> call(GetAllCharactersParams params) async {
    return await characterRepository.getAllCharacters();
  }
}

class GetAllCharactersParams extends Equatable {
  const GetAllCharactersParams();

  @override
  List<Object?> get props => [];
}