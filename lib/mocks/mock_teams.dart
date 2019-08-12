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
            text:
                'Covers over 111 years of the football from the club based in Turin, Italy (established in 1897) that would eventually become the most successful team in the history of Italian football and amongst the elite football clubs of the world. Iuventūs is Latin for "youth".',
          ),
          TeamFacts(
            title: 'Key Players',
            text: 'Cristiano Ronaldo,\nPjanic,\nDybala,\nDe Ligt,\nBuffon,\nChilleni.',
          ),
        ]);
  }
}
