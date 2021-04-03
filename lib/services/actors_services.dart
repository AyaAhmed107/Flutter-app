import 'dart:convert';
import 'package:flutter_application_2/models/actors.dart';
import 'package:http/http.dart' as http;

class ActorService {
  // Future<List<Actor>>
  Future<List<Actor>> fetchActors() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/person/popular?api_key=5236f12f171de2a71328e01e74ebc092'));
    print('response ${response.body}');
    if (response.statusCode == 200) {
      print('response json ${json.decode(response.body)['results']}');
      final List<Actor> actors = List<Actor>.from(
          (json.decode(response.body)['results'] as List)
              .map((e) => Actor.fromJson((e)))).toList();
      return actors;
    } else {
      throw Exception('FAILED TO LOAD Actors');
    }
  }
}
