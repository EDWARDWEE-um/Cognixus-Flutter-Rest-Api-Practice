import 'package:json_annotation/json_annotation.dart';

part 'game_developer.g.dart';

@JsonSerializable()

class Developer {

  @JsonKey(name: "id")

  final int? id;

  @JsonKey(name: "name")
  final String? name;


  Developer({this.id,this.name});

  factory Developer.fromJson(Map<String, dynamic> json) => _$DeveloperFromJson(json);
  Map<String, dynamic> toJson() => _$DeveloperToJson(this);
}
