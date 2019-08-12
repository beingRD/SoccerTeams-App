import 'package:randomapp/models/team_facts.dart';
import 'package:randomapp/models/teams.dart';

class MockTeams extends Teams {
  static Teams FetchAny() {
    return Teams(
        name: 'Juventus',
        url:
            'https://www.juvefc.com/wp-content/uploads/2019/08/FBL-ICC-2019-JUVENTUS-MADRID-1565462820.jpg',
        facts: <TeamFacts>[
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
