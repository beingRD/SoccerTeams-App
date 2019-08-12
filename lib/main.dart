import 'package:flutter/material.dart';
import 'package:randomapp/mocks/mock_teams.dart';
import 'package:randomapp/models/teams.dart';
import 'package:randomapp/team_detail.dart';

void main() {
  final Teams mockteams = MockTeams.FetchAny();

  return runApp(MaterialApp(home: TeamDetail(mockteams)));
}
