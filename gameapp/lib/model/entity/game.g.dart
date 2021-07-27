// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) {
  return Game(
    id: json['id'] as int?,
    name: json['name'] as String?,
    releaseDate: json['released'] as String?,
    backgroundImage: json['background_image'] as String?,
    metacritic: json['metacritic'] as int?,
  );
}

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'released': instance.releaseDate,
      'background_image': instance.backgroundImage,
      'metacritic': instance.metacritic,
    };
