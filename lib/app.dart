import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:randomapp/mocks/mock_teams.dart';
import 'package:randomapp/teams_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mockTeams = MockTeams.fetchAll();
    return MaterialApp(home: TeamsList(mockTeams));
  }
}
