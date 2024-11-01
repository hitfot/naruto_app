import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:naruto_app/common/errors/exceptions.dart';
import 'package:naruto_app/data/models/character_model.dart';

abstract class CharactersRemoteData {
  Future<List<CharacterModel>> getAllCharacters();
  Future<CharacterModel> getCharacterById(int id);
}

class CharactersRemoteDataImpl extends CharactersRemoteData {
  static const String _apiUrl = 'https://dattebayo-api.onrender.com/characters';

  final Dio dio;

  CharactersRemoteDataImpl({required this.dio});

  @override
  Future<List<CharacterModel>> getAllCharacters() async {
    final response = await dio.get(_apiUrl);

    if(response.statusCode == 200) {
      Map<String, dynamic> responseBody = jsonDecode(response.data);
      List<CharacterModel> returnableList = [];

      responseBody["characters"].forEach((value) {returnableList.add(CharacterModel.fromJson(value));});
      return returnableList;
    } else {
      throw ServerException('Response status code is ${response.statusCode}');
    }
  }

  @override
  Future<CharacterModel> getCharacterById(int id) {
    // TODO: implement getCharacterById
    throw UnimplementedError();
  }
}