import 'package:json_annotation/json_annotation.dart';

part 'game_platform_details.g.dart';

@JsonSerializable()

class GamePlatformDetails{

  @JsonKey(name: "id")

  final int? id;

  @JsonKey(name: "name")
  final String? name;


  GamePlatformDetails({this.id,this.name});

  factory GamePlatformDetails.fromJson(Map<String, dynamic> json) => _$GamePlatformDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$GamePlatformDetailsToJson(this);
}
