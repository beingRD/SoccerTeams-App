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
  bool loading = false;

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
        body: Column(
          children: [
            renderProgressBar(context),
            Expanded(
              child: renderListView(context),
            )
          ],
        ));
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

  Widget renderProgressBar(BuildContext context) {
    return (this.loading
        ? LinearProgressIndicator(
            value: null,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey))
        : Container());
  }

  Widget renderListView(BuildContext context) {
    return ListView.builder(
      itemBuilder: _listViewItemBuilder,
      itemCount: this.teams.length,
    );
  }
}
