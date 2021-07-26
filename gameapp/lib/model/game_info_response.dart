import 'package:json_annotation/json_annotation.dart';

part 'game_info_response.g.dart';

@JsonSerializable()

class GameDetails {

  @JsonKey(name: " id ")
  final int? id;

  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "released")
  final String? released;

  @JsonKey(name: "background_image")
  final String? background_image;

  @JsonKey(name: "metacritic")
  final String? metacritic;

  @JsonKey(name: "description")
  final String? description;

  

  GameDetails({this.id, this.name, this.released, this.background_image, this.metacritic, this.description});

  factory GameDetails.fromJson(Map<String, dynamic> json) =>
      _$GameDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$GameDetailsToJson(this);
}
