// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Teams _$TeamsFromJson(Map<String, dynamic> json) {
  return Teams(
    id: json['id'] as int,
    name: json['name'] as String,
    url: json['url'] as String,
    facts: (json['facts'] as List)
        ?.map((e) =>
            e == null ? null : TeamFacts.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TeamsToJson(Teams instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'facts': instance.facts,
    };
