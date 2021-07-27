// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_platform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GamePlatform _$GamePlatformFromJson(Map<String, dynamic> json) {
  return GamePlatform(
    gamePlatformDetails: (json['platform'] as List<dynamic>?)
        ?.map((e) => GamePlatformDetails.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GamePlatformToJson(GamePlatform instance) =>
    <String, dynamic>{
      'platform': instance.gamePlatformDetails,
    };
