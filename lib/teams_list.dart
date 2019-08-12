import 'package:flutter/material.dart';
import 'package:randomapp/team_detail.dart';
import 'models/teams.dart';
import 'styles.dart';

class TeamsList extends StatelessWidget {
  final List<Teams> teams;
  TeamsList(this.teams);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Teams",
          style: Styles.navBarTitle,
        ),
      ),
      body: ListView.builder(
        itemCount: this.teams.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: _itemThumbnail(this.teams[index]),
            title: _itemTitle(this.teams[index]),
          );
        },
      ),
    );
  }

  Widget _itemThumbnail(Teams teams) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(teams.url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(Teams teams) {
    return Text('${teams.name}', style: Styles.textDefault);
  }

  Widget _navigateToTeamDetail(BuildContext context, Teams teams) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TeamDetail(teams),
        ));
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var teams = this.teams[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(teams),
      title: _itemTitle(teams),
      onTap: () => _navigateToTeamDetail(context, teams),
    );
  }
}
