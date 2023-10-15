import 'package:assignment1/model/dict.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'widget/dict_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Dict? dict;
  Dio dio = Dio();

  search(String query) async {
    var url = 'https://api.dictionaryapi.dev/api/v2/entries/en/';
    try {
      var res = await dio.get(url + query);
      var data = res.data.first;
      dict = Dict.fromMap(data);
      setState(() {});
    } catch (e) {
      dict = null;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary App'),
        elevation: 0,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: "Search",
                        suffixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      onSubmitted: (value) {
                        search(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            if (dict != null)
              Expanded(
                  child: SingleChildScrollView(child: DictCard(dict: dict!)))
          ],
        ),
      ),
    );
  }
}
