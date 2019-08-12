import 'package:flutter/material.dart';
import 'package:randomapp/mocks/mock_teams.dart';
import 'package:randomapp/teams_list.dart';
import 'teams_list.dart';

void main() {
  final mockteams = MockTeams.fetchAll();

  return runApp(MaterialApp(home: TeamsList(mockteams)));
}
