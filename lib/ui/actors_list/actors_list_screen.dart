import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/ui/actors_list/actors_list_provider.dart';
import '../../widgets/actor_widget.dart';
import 'package:provider/provider.dart';

class ActorsScreen extends StatelessWidget {
  final String title;

  const ActorsScreen({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("title")),
      body: ChangeNotifierProvider<ActorProvider>(
        create: (context) => ActorProvider(),
        child:
            Consumer<ActorProvider>(builder: (buildContext, actorProvider, _) {
          return (actorProvider.actors != null)
              ? ListView.builder(
                  itemCount: actorProvider.actors.length,
                  itemBuilder: (ctx, index) {
                    final actor = actorProvider.actors[index];
                    print(actor);
                    return ActorWidget(
                      actor: actor,
                    );
                  })
              : Center(child: CircularProgressIndicator());
        }),
      ),
    );
  }
}
