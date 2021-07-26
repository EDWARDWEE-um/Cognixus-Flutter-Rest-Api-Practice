// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameList _$GameListFromJson(Map<String, dynamic> json) {
  return GameList(
    game: (json['results'] as List<dynamic>?)
        ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GameListToJson(GameList instance) => <String, dynamic>{
      'results': instance.game,
    };
