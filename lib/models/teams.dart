import 'package:json_annotation/json_annotation.dart';
import 'package:randomapp/models/team_facts.dart';

part 'teams.g.dart';

@JsonSerializable()
class Teams {
  final String name;
  final String url;
  final List<TeamFacts> facts;
  Teams({this.name, this.url, this.facts});

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);
}
