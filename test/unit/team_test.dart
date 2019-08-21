import 'package:flutter_test/flutter_test.dart';
//import 'dart:convert';
import '../../lib/models/teams.dart';

void main() {
  /*test('test Team deserialization', () {
    const teamJSON =
        '{ "name": "Juventus", "url": "https://www.juvefc.com/wp-content/uploads/2019/08/FBL-ICC-2019-JUVENTUS-MADRID-1565462820.jpg","facts": [{ "title": "History", "text": "Covers over 111 years of the football from the club based in Turin"}] }';

    final teamMap = json.decode(teamJSON) as Map<String, dynamic>;

    expect("Juventus", equals(teamMap['name']));

    final team = Teams.fromJson(teamMap);

    expect(team.name, equals(teamMap['name']));
    expect(team.url, equals(teamMap['url']));

    expect(team.facts[0].title, matches(teamMap['facts'][0]['title']));
    expect(team.facts[0].text, matches(teamMap['facts'][0]['text']));
  });*/

  test('test /db and /db:id', () async {
    final teams = await Teams.fetchAll();
    for (var team in teams) {
      expect(team.name, hasLength(greaterThan(0)));
      expect(team.url, hasLength(greaterThan(0)));
      //expect(team.facts, hasLength(greaterThan(0)));

      final fetchedTeam = await Teams.fetchByID(team.id);
      expect(fetchedTeam.name, equals(team.name));
      expect(fetchedTeam.url, equals(team.url));
      //expect(fetchedTeam.facts, equals(team.facts));
    }
  });
}
