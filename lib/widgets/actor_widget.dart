import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_2/models/actors.dart';

class ActorWidget extends StatelessWidget {
  final Actor actor;

  const ActorWidget({Key key, this.actor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeDilation = 4.0;
    print(' from actor widget ${actor.adult}');
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Container(
                height: 180,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Expanded(
                    // flex: 2,
                    // child:
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500${actor.profilePath}',
                        fit: BoxFit.contain,
                      ),
                    ),
                    // ),
                    // Expanded(
                    //     flex: 4,
                    //     child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          actor.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4),
                          child: Container(
                            child: Text('Popularity: ${actor.popularity}',
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ),
                        (actor.adult) ? Text('Adult') : Text('Child'),
                        Text('Known for :\n${actor.knownForDepartment}'),
                        (actor.gender == 1) ? Text('Female') : Text('Male'),
                        Column(
                          children: [
                            Text("Known For"),
                            Column(
                                children: actor.knownFor.map((item) {
                              return Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.all(
                                        const Radius.circular(20))),
                                padding: EdgeInsets.all(6),
                                child: (item.name != null)
                                    ? Text('${item.name}')
                                    : Text('${item.title}'),
                              );
                            }).toList(),
                          ],
                        ),
                      ],
                    )
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
