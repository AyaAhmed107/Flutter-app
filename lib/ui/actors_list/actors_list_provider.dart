import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/actors.dart';
import 'package:flutter_application_2/repositories/actors_repository.dart';

class ActorProvider extends ChangeNotifier {
  ActorProvider() {
    getActors();
  }
  List<Actor> actors;
  final ActorRepository _actorService = ActorRepository();

  void getActors() {
    _actorService.fetchActors().then((newActors) {
      actors = newActors;
      notifyListeners();
    });
  }
}
