import 'package:flutter/material.dart';
import 'models/teams.dart';

class TeamDetail extends StatelessWidget {
  final Teams teams;

  TeamDetail(this.teams);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Teams"),
        backgroundColor: const Color(0xff000080),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderFacts(teams),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(title);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }

  List<Widget> _renderFacts(Teams teams) {
    var result = List<Widget>();
    for (int i = 0; i < teams.facts.length; i++) {
      result.add(_sectionTitle(teams.facts[i].title));
      result.add(_sectionText(teams.facts[i].text));
    }
    return result;
  }
}
