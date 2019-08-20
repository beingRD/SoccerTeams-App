import 'package:json_annotation/json_annotation.dart';
import 'package:randomapp/endpoint.dart';
import 'package:randomapp/models/team_facts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

part 'teams.g.dart';

@JsonSerializable()
class Teams {
  final int id;
  final String name;
  final String url;
  final List<TeamFacts> facts;
  Teams({this.id, this.name, this.url, this.facts});

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);

  static Future<List<Teams>> fetchAll() async {
    var uri = Endpoint.uri('/db');
    final resp = await http.get(uri.toString());

    if (resp.statusCode != 200) throw (resp.body);

    List<Teams> list = List<Teams>();
    for (var jsonItem in json.decode(resp.body)) {
      list.add(Teams.fromJson(jsonItem));
    }
    return list;
  }

  static Future<Teams> fetchByID(int id) async {
    var uri = Endpoint.uri('/db/$id');

    final resp = await http.get(uri.toString());

    if (resp.statusCode != 200) {
      throw (resp.body);
    }

    final Map<String, dynamic> itemMap = json.decode(resp.body);
    return Teams.fromJson(itemMap);
  }
}
