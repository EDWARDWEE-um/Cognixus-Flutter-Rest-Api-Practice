// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameDetails _$GameDetailsFromJson(Map<String, dynamic> json) {
  return GameDetails(
    id: json[' id '] as int?,
    name: json['name'] as String?,
    released: json['released'] as String?,
    background_image: json['background_image'] as String?,
    metacritic: json['metacritic'] as int?,
    description: json['description'] as String?,
    gameGenre: (json['genres'] as List<dynamic>?)
        ?.map((e) => GameGenre.fromJson(e as Map<String, dynamic>))
        .toList(),
    developer: (json['developers'] as List<dynamic>?)
        ?.map((e) => Developer.fromJson(e as Map<String, dynamic>))
        .toList(),
    publisher: (json['publishers'] as List<dynamic>?)
        ?.map((e) => Publisher.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GameDetailsToJson(GameDetails instance) =>
    <String, dynamic>{
      ' id ': instance.id,
      'name': instance.name,
      'released': instance.released,
      'background_image': instance.background_image,
      'metacritic': instance.metacritic,
      'description': instance.description,
      'genres': instance.gameGenre,
      'developers': instance.developer,
      'publishers': instance.publisher,
    };
