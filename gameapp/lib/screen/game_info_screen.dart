import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gameapp/http_service.dart';
import 'package:gameapp/model/game_info_response.dart';


class GameInfoScreen extends StatefulWidget {
  GameInfoScreen({Key? key}) : super(key: key);

  @override
  _GameInfoScreenState createState() => _GameInfoScreenState();
}

class _GameInfoScreenState extends State<GameInfoScreen> {
  @override
  final apiKey = "&key=6eaf82e6cd264cbd9ea5950dd863e5dc";

  HttpService? http;

  

  GameDetails? game;

  bool isLoading = false;

  Future getUser() async {
    Response response;
    try {
      isLoading = true;

      response = await http!.getRequest("/1?${apiKey}");

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
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Single user"),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : game != null
              ? Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network("${game!.background_image}"),
                      Container(
                        height: 16,
                      ),
                      Text(
                          "Hello, ${game!.name} ${game!.released} ${game!.metacritic}"),
                      Text(
                        "${game!.description}"
                      )    
                    ],
                  ),
                )
              : Center(child: Text("No User Object")),
    );
  }
}
