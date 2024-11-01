import 'package:naruto_app/domain/entities/character.dart';

class CharacterModel extends Character {
  const CharacterModel({
    required id,
    required name,
    required images, 
    required family,
    required jutsu,
    required natureType,
    required personal,
    required rank,
    required tools,
    required voiceActors,
  }) : super(
    id: id,
    name: name,
    images: images,
    family: family,
    jutsu: jutsu,
    natureType: natureType,
    personal: personal,
    rank: rank,
    tools: tools,
    voiceActors: voiceActors,
  );

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['id'], 
      name: json['name'], 
      images: json['images'], 
      family: json['family'], 
      jutsu: json['jutsu'], 
      natureType: json['natureType'], 
      personal: json['personal'], 
      rank: json['rank'], 
      tools: json['tools'], 
      voiceActors: json['voiceActors']
      );
  }
}