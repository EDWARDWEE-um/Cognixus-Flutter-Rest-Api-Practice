import 'package:json_annotation/json_annotation.dart';

part 'game.g.dart';

@JsonSerializable()
class Game {
  @JsonKey(name: "id")

  final int? id;

  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "released")
  final String? releaseDate;

  @JsonKey(name: "background_image")
  final String? backgroundImage;

  @JsonKey(name: "metacritic")
  final int? metacritic;

  Game({this.id,this.name,this.releaseDate,this.backgroundImage,this.metacritic});

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}
