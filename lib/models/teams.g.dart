part of 'teams.dart';

Teams _$TeamsFromJson(Map<String, dynamic> json) {
  return Teams(
      name: json['name'] as String,
      url: json['url'] as String,
      facts: (json['facts'] as List)
          ?.map((e) =>
              e == null ? null : TeamFacts.fromJson(e as Map<String, dynamic>))
          ?.toList());
}
