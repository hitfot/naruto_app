import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naruto_app/domain/usecase/get_all_characters.dart';
import 'package:naruto_app/presentation/provider/state/character_state.dart';
import 'package:naruto_app/service_locator.dart';

final characterProvider =
    StateNotifierProvider<CharacterNotifier, CharacterState>((ref) {
  return CharacterNotifier(getAllCharacters: getIt());
});

class CharacterNotifier extends StateNotifier<CharacterState> {
  CharacterNotifier({required this.getAllCharacters})
      : super(CharacterInitial());

  final GetAllCharacters getAllCharacters;

  void loadCharacters() async {
    final characterListResponse = await getAllCharacters(const GetAllCharactersParams());
    characterListResponse.fold(
      (left) => {state = CharacterLoadError()}, 
      (right) => {state = CharacterLoaded(characterList: right)}
      );
  }
}
