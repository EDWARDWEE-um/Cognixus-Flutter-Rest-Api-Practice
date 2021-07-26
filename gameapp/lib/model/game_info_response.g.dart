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
    metacritic: json['metacritic'] as String?,
    description: json['description'] as String?,
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
    };
