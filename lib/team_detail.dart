import 'package:flutter/material.dart';
import 'models/teams.dart';

class TeamDetail extends StatelessWidget {
  final Teams teams;

  TeamDetail(this.teams);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(teams.name),
        backgroundColor: const Color(0xff000080),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderBody(context, teams),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.black87, fontSize: 25.0),
      ),
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
      child: Text(text),
    );
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }

  List<Widget> _renderBody(BuildContext context, Teams team) {
    var result = List<Widget>();
    result.add(_bannerImage(teams.url, 170.0));
    result.addAll(_renderFacts(context, teams));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Teams team) {
    var result = List<Widget>();
    for (int i = 0; i < teams.facts.length; i++) {
      result.add(_sectionTitle(teams.facts[i].title));
      result.add(_sectionText(teams.facts[i].text));
    }
    return result;
  }
}
