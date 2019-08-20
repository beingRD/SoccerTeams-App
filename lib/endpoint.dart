import 'dart:core';

class Endpoint{
  static const apiScheme = 'https';
  static const apiHost = 'my-json-server.typicode.com';
  static const prefix = '/beingRD/MockTeams';

  static Uri uri(String path, {Map<String, dynamic> queryParameters}) {
    final uri = Uri(
      scheme: apiScheme,
      host: apiHost,
      path: '$prefix$path',
      queryParameters: queryParameters,
    );
    return uri;
  }
}