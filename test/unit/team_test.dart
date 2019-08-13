import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';
import '../../lib/models/teams.dart';

void main() {
  test('test Team deserialization', () {
    const teamJSON =
        '{ "name": "Juventus", "url": "https://www.juvefc.com/wp-content/uploads/2019/08/FBL-ICC-2019-JUVENTUS-MADRID-1565462820.jpg","facts": [{ "title": "History", "text": "Covers over 111 years of the football from the club based in Turin"}] }';

    final teamMap = json.decode(teamJSON) as Map<String, dynamic>;

    expect("Juventus", equals(teamMap['name']));

    final team = Teams.fromJson(teamMap);

    expect(team.name, equals(teamMap['name']));
    expect(team.url, equals(teamMap['url']));

    expect(team.facts[0].title, matches(teamMap['facts'][0]['title']));
    expect(team.facts[0].text, matches(teamMap['facts'][0]['text']));
  });
}
