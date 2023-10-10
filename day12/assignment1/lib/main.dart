import 'package:flutter/material.dart';
import 'model/regist.dart';
import 'widget/regist_card.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var registData;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var dio = Dio();
    var url = 'https://sniperfactory.com/sfac/http_json_data';
    Response res = await dio.get(url);
    if (res.statusCode == 200) {
      var resultMap = res.data["item"];
      registData = Regist.fromMap(resultMap);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: registData != null
              ? RegistCard(regist: registData)
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
