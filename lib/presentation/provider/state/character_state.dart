import 'package:equatable/equatable.dart';
import 'package:naruto_app/domain/entities/character.dart';

abstract class CharacterState extends Equatable {
  const CharacterState();

  @override
  List<Object?> get props => [];
}

class CharacterInitial extends CharacterState {}

class CharacterLoading extends CharacterState {}

class CharacterLoaded extends CharacterState {
  final List<Character> characterList;

  const CharacterLoaded({required this.characterList});
}

class CharacterLoadError extends CharacterState {}