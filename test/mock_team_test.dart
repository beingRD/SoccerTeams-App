import 'package:flutter_test/flutter_test.dart';
import 'package:randomapp/mocks/mock_teams.dart';

void main() {
  test('test fetchAny', () {
    final mockTeams = MockTeams.fetchAny();
    expect(mockTeams, isNotNull);
    expect(mockTeams.name, isNotEmpty);
  });

  test('test fetchAll', () {
    final mockTeams = MockTeams.fetchAll();
    expect(mockTeams.length, greaterThan(0));
    expect(mockTeams[0].name, isNotEmpty);
  });

  test('test fetch', () {
    final mockTeams = MockTeams.fetch(0);
    expect(mockTeams, isNotNull);
    expect(mockTeams.name, isNotEmpty);
  });
}
