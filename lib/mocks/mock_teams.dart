import 'package:randomapp/models/team_facts.dart';
import 'package:randomapp/models/teams.dart';

class MockTeams extends Teams {
  static Teams FetchAny() {
    return Teams(name: 'Juventus', url: '', facts: <TeamFacts>[
      TeamFacts(
        title: 'History',
        text: '...',
      ),
      TeamFacts(
        title: 'Key Players',
        text: '...',
      ),
    ]);
  }
}
