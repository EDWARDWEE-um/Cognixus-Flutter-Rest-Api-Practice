import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gameapp/components/game_info_spacing.dart';
import 'package:gameapp/components/game_info_title_text.dart';
import 'package:gameapp/http_service.dart';
import 'package:gameapp/model/game_info_response.dart';

class GameInfoScreen extends StatefulWidget {
  // In the constructor, require a Todo.
  const GameInfoScreen({Key? key, required this.id}) : super(key: key);

  // Declare a field that holds the Todo.
  final int id;

  @override
  _GameInfoScreenState createState() => _GameInfoScreenState();
}

class _GameInfoScreenState extends State<GameInfoScreen> {
  final apiKey = "&key=6eaf82e6cd264cbd9ea5950dd863e5dc";

  HttpService? http;

  GameDetails? game;

  bool isLoading = false;

  Future getGame() async {
    Response response;
    try {
      isLoading = true;

      response = await http!.getRequest("/${widget.id}?${apiKey}");

      isLoading = false;

      if (response.statusCode == 200) {
        setState(() {
          game = GameDetails.fromJson(response.data);
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
    getGame();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${game!.name}"),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : game != null
              ? SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network("${game!.background_image}"),
                        Container(
                          height: 16,
                        ),
                        GameInfoTitleText(text: "Description"),
                        Html(data: "${game!.description}"),
                        GameInfoSpacing(),
                        GameInfoTitleText(text: "Genre"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: game!.gameGenre!
                              .map((item) => new Text(
                                    "  •${item.name}",
                                    style: TextStyle(letterSpacing: 1.0),
                                  ))
                              .toList(),
                        ),
                        GameInfoSpacing(),
                        GameInfoTitleText(text: "Developer"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: game!.developer!
                              .map((item) => new Text(
                                    "  •${item.name}",
                                    style: TextStyle(letterSpacing: 1.0),
                                  ))
                              .toList(),
                        ),
                        GameInfoSpacing(),
                        GameInfoTitleText(text: "Publisher"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: game!.publisher!
                              .map((item) => new Text(
                                    "  •${item.name}",
                                    style: TextStyle(letterSpacing: 1.0),
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                )
              : Center(child: Text("No User Object")),
    );
  }
}
