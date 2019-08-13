import 'package:json_annotation/json_annotation.dart';

part 'team_facts.g.dart';

@JsonSerializable()
class TeamFacts {
  final String title;
  final String text;
  TeamFacts({this.title, this.text});

  factory TeamFacts.fromJson(Map<String, dynamic> json) =>
      _$TeamFactsFromJson(json);
}
