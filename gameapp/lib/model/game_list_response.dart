import 'package:json_annotation/json_annotation.dart';
import 'package:gameapp/model/entity/game.dart';
part 'game_list_response.g.dart';

@JsonSerializable()

class GameList {

  @JsonKey(name: "results")
  
  final List<Game> ? game;

  GameList({this.game});

  factory GameList.fromJson(Map<String, dynamic> json) =>
      _$GameListFromJson(json);
  Map<String, dynamic> toJson() => _$GameListToJson(this);

}
