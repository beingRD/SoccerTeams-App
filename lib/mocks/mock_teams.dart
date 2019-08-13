import 'package:randomapp/models/team_facts.dart';
import 'package:randomapp/models/teams.dart';

class MockTeams extends Teams {
  static final List<Teams> items = [
    Teams(
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
            text:
                'Cristiano Ronaldo,\nPjanic,\nDybala,\nDe Ligt,\nBuffon,\nChilleni.',
          ),
        ]),
    Teams(
        name: 'Mancester City',
        url:
            'https://pbs.twimg.com/media/EBnjb0gXYAAZVUp.jpg',
        facts: <TeamFacts>[
          TeamFacts(
            title: 'History',
            text:
                'Founded in 1880 as St. Marks (West Gorton), it became Ardwick Association Football Club in 1887 and Manchester City in 1894. ... After losing the 1981 FA Cup Final, the club went through a period of decline, which eventually saw them relegated as far down as third tier of English football by the end of the 1997–98 season.',
          ),
          TeamFacts(
            title: 'Key Players',
            text:
                'Kevin De Brunye,\nBernado Silva,\nRaheem Sterling,\nAguero,\nLaporte,\nCancelo.',
          ),
        ]),
    Teams(
        name: 'Liverpool',
        url:
            'https://d3j2s6hdd6a7rg.cloudfront.net/v2/uploads/media/default/0001/92/thumb_91810_default_news_size_5.jpeg',
        facts: <TeamFacts>[
          TeamFacts(
            title: 'History',
            text:
                'Liverpool began as a tidal pool next to the River Mersey. It was probably called the lifer pol meaning muddy pool. 1King John founded the port of Liverpool in 1207. The English had recently conquered Ireland and John needed another port to send men and supplies across the Irish Sea.',
          ),
          TeamFacts(
            title: 'Key Players',
            text:
                'Sadio Mane,\nMo Salah,\nRoberto Firmino,\nVan Dijk,\nAllison,\nHenderson.',
          ),
        ]),        
  ];

  static Teams fetchAny() {
    return MockTeams.items[0];
  }

  static List<Teams> fetchAll() {
    return MockTeams.items;
  }

  static Teams fetch(int index){
    return MockTeams.items[index];
  }
}
