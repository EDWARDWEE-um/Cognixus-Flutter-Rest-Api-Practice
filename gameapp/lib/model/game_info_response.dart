import 'package:gameapp/model/entity/game_genre.dart';
import 'package:gameapp/model/entity/game_platform.dart';
import 'package:gameapp/model/entity/game_publisher.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:gameapp/model/entity/game_developer.dart';
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
  final int? metacritic;

  @JsonKey(name: "description")
  final String? description;

  @JsonKey(name: "genres")
  final List<GameGenre>? gameGenre;

  //@JsonKey(name: "platforms")
  //final List<GamePlatform>? gamePlatform;

  @JsonKey(name: "developers")
  final List<Developer>? developer;

  @JsonKey(name: "publishers")
  final List<Publisher>? publisher;

  GameDetails( {
    this.id,
    this.name,
    this.released,
    this.background_image,
    this.metacritic,
    this.description,
    this.gameGenre,
    //  this.gamePlatform,
    this.developer,
    this.publisher,
  });

  factory GameDetails.fromJson(Map<String, dynamic> json) =>
      _$GameDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$GameDetailsToJson(this);
}
