import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RefreshController refreshController = RefreshController();
  Connectivity connectivity = Connectivity();

  bool isLoading = false;
  bool isConnected = false;
  var resultData;

  @override
  void initState() {
    super.initState();
    checkConnection();
    getData();
  }

  Future<void> checkConnection() async {
    var connectivityResult = await connectivity.checkConnectivity();

    isConnected = false;
    setState(() {});

    await Future.delayed(Duration(seconds: 1));

    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      isConnected = true;
      setState(() {});
    }
  }

  Future<void> getData() async {
    var dio = Dio();
    var res = await dio.get("https://sniperfactory.com/sfac/http_day16_dogs");

    resultData = res.data["body"];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("8일차 과제"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await checkConnection();
        },
        child: Icon(Icons.wifi_find),
      ),
      body: SmartRefresher(
        controller: refreshController,
        enablePullDown: true,
        onRefresh: () async {
          isLoading = true;
          setState(() {});

          await Future.delayed(Duration(seconds: 1));

          await getData();
          isLoading = false;
          setState(() {});
          refreshController.refreshCompleted();
        },
        child: isConnected == false
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("인터넷 확인 중 입니다"),
                    SizedBox(height: 10),
                    CircularProgressIndicator()
                  ],
                ),
              )
            : isLoading == false
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: resultData?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                resultData[index]["url"],
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              resultData[index]["msg"],
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 4),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Icon(
                                  Icons.comment,
                                  size: 18,
                                )),
                          ]),
                        ),
                      );
                    })
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Shimmer.fromColors(
                          baseColor: Colors.grey,
                          highlightColor: Colors.white70,
                          child: Card());
                    }),
      ),
    ));
  }
}
