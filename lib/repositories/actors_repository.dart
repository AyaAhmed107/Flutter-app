import 'package:flutter_application_2/models/actors.dart';
import 'package:flutter_application_2/services/actors_services.dart';

class ActorRepository {
  final ActorService _actorService = ActorService();

  Future<List<Actor>> fetchActors() {
    print(_actorService.fetchActors());
    return _actorService.fetchActors();
  }
}
