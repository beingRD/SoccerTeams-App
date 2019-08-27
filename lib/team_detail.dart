import 'package:flutter/material.dart';
import 'package:randomapp/styles.dart';
import 'models/teams.dart';

class TeamDetail extends StatefulWidget {
  final int teamId;

  TeamDetail(this.teamId);

  @override
  createState() => _TeamDetailState(this.teamId);
}

class _TeamDetailState extends State<TeamDetail> {
  final int teamId;
  Teams teams = Teams.blank();

  _TeamDetailState(this.teamId);

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(teams.name),
        backgroundColor: const Color(0xff000080),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, teams),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: Styles.headerLarge,
      ),
    );
  }

  loadData() async {
    final teams = await Teams.fetchByID(this.teamId);

    if (mounted) {
      setState(() {
        this.teams = teams;
      });
    }
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: Styles.textDefault,
      ),
    );
  }

  Widget _bannerImage(String url, double height) {
    Image image;

    try {
      image = Image.network(url, fit: BoxFit.fitWidth);
    } catch (e) {
      print("could not load the image $url");
    }
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: image,
    );
  }

  List<Widget> _renderBody(BuildContext context, Teams team) {
    var result = List<Widget>();
    result.add(_bannerImage(team.url, 170.0));
    result.addAll(_renderFacts(context, team));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Teams team) {
    var result = List<Widget>();
    for (int i = 0; i < team.facts.length; i++) {
      result.add(_sectionTitle(team.facts[i].title));
      result.add(_sectionText(team.facts[i].text));
    }
    return result;
  }
}
