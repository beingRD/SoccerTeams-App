import 'package:flutter/material.dart';
import 'package:randomapp/team_detail.dart';
import 'models/teams.dart';

import 'styles.dart';

class TeamsList extends StatefulWidget {
  @override
  createState() => _TeamsListState();
}

class _TeamsListState extends State<TeamsList> {
  List<Teams> teams = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Teams",
          style: Styles.navBarTitle,
        ),
        backgroundColor: Color(0xFF000080),
      ),
      body: ListView.builder(
        itemCount: this.teams.length,
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }

  loadData() async {
    final teams = await Teams.fetchAll();
    if (this.mounted) {
      setState(() {
        this.teams = teams;
      });
    }
  }

  Widget _itemThumbnail(Teams teams) {
    Image image;
    try {
      image = Image.network(teams.url, fit: BoxFit.fitWidth);
    } catch (e) {
      print('could not load image ${teams.url}');
    }
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: image,
    );
  }

  Widget _itemTitle(Teams teams) {
    return Text('${teams.name}', style: Styles.textDefault);
  }

  void _navigateToTeamDetail(BuildContext context, int teamId) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TeamDetail(teamId),
        ));
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var teams = this.teams[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(teams),
      title: _itemTitle(teams),
      onTap: () => _navigateToTeamDetail(context, index),
    );
  }
}
