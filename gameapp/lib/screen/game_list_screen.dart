import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gameapp/components/game_card.dart';
import 'package:gameapp/model/entity/game.dart';
import 'package:gameapp/model/game_list_response.dart';

import 'package:gameapp/http_service.dart';
import 'package:gameapp/screen/game_info_screen.dart';

class GameListScreen extends StatefulWidget {
  GameListScreen({Key? key}) : super(key: key);

  @override
  _GameListScreenState createState() => _GameListScreenState();
}

class _GameListScreenState extends State<GameListScreen> {
  final apiKey = "&key=6eaf82e6cd264cbd9ea5950dd863e5dc";

  bool isLoading = false;

  HttpService? http;

  GameList? gameList;

  List<Game>? games;

  Future getListUser() async {
    Response response;
    try {
      isLoading = true;

      response = await http!.getRequest(
          "?page=3&page_size=50&platforms=187&ordering=-released${apiKey}");

      isLoading = false;

      if (response.statusCode == 200) {
        setState(() {
          gameList = GameList.fromJson(response.data);
          games = gameList!.game;
        });
      } else {
        print("There is some problem status code not 200");
      }
    } on Exception catch (e) {
      isLoading = false;
      print(e);
    }
  }

  @override
  void initState() {
    http = HttpService();

    getListUser();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game App"),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : games != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    final game = games![index];
                    return new GestureDetector(
                      //You need to make my child interactive
                      onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => GameInfoScreen(id: int.parse("${game.id}"))),),
                      child: Align(
                        alignment:
                            Alignment.center, //or choose another Alignment

                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.90, //you sure it should be 0.001?
                          height: MediaQuery.of(context).size.height * 0.28,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: GameCard(game: game),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: games!.length,
                )
              : Center(
                  child: Text("No User Object"),
                ),
    );
  }
}
