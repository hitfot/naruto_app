import 'package:equatable/equatable.dart';

class Character extends Equatable {
  final int id;
  final String name;
  final List<String> images;
  final Map<String, String> family;
  final List<String> jutsu;
  final List<String> natureType;
  final Map<String, dynamic> personal;
  final Map<String, dynamic> rank;
  final List<String> tools;
  final Map<String, dynamic> voiceActors;

  const Character(
      {required this.id,
      required this.name,
      required this.images,
      required this.family,
      required this.jutsu,
      required this.natureType,
      required this.personal,
      required this.rank,
      required this.tools,
      required this.voiceActors});

  @override
  List<Object?> get props => [
        id,
        name,
        images,
        family,
        jutsu,
        natureType,
        personal,
        rank,
        tools,
        voiceActors
      ];
}
