// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_facts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamFacts _$TeamFactsFromJson(Map<String, dynamic> json) {
  return TeamFacts(
    title: json['title'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$TeamFactsToJson(TeamFacts instance) => <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
    };
