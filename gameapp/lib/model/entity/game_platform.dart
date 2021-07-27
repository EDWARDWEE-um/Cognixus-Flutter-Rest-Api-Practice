import 'package:gameapp/model/entity/game_platform_details.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_platform.g.dart';


@JsonSerializable()

class GamePlatform {

  @JsonKey(name: "platform")

  final List<GamePlatformDetails>? gamePlatformDetails;

  GamePlatform({this.gamePlatformDetails});

  factory GamePlatform.fromJson(Map<String, dynamic> json) =>
      _$GamePlatformFromJson(json);
  Map<String, dynamic> toJson() => _$GamePlatformToJson(this);
}
