import 'package:flutter/material.dart';
import 'package:gameapp/model/entity/game.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    Key? key,
    required this.game,
  }) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      //I am the clickable child
      child: new Column(
        children: <Widget>[
          //new Image.network(video[index]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.network('${game.backgroundImage}',
                      width: 300, height: 150, fit: BoxFit.fill),
                ),
              ),
              FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "${game.name}",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                         Text(
                        game.metacritic== null? "Metacritic Score : N/A" : "Metacritic Score : ${game.metacritic}",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

