import 'package:flutter_test/flutter_test.dart';
import 'package:randomapp/mocks/mock_teams.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:randomapp/app.dart';

void main() {
  testWidgets('test app startup', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(App());

      final mockTeam = MockTeams.fetchAny();

      expect(find.text(mockTeam.name), findsOneWidget);
      expect(find.text('${mockTeam.name}blahh'), findsNothing);
    });
  });
}
