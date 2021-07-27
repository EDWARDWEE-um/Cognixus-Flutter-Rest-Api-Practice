import 'package:json_annotation/json_annotation.dart';

part 'game_genre.g.dart';

@JsonSerializable()

class GameGenre {

  @JsonKey(name: "id")

  final int? id;

  @JsonKey(name: "name")
  final String? name;


  GameGenre({this.id,this.name});

  factory GameGenre.fromJson(Map<String, dynamic> json) => _$GameGenreFromJson(json);
  Map<String, dynamic> toJson() => _$GameGenreToJson(this);
}
