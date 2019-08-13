part of 'team_facts.dart';

TeamFacts _$TeamFactsFromJson(Map<String, dynamic> json) {
  return TeamFacts(
      title: json['title'] as String, text: json['text'] as String);
}

Map<String, dynamic> _$TeamFactsToJson(TeamFacts instance) =>
    <String, dynamic>{'title': instance.title, 'text': instance.text};
