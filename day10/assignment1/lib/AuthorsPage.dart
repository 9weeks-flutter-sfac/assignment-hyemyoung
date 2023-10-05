// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/secret_cat_sdk.dart';
import 'widgets/CustomizedAppbar.dart';
import 'widgets/CustomizedBackground.dart';

class AuthorsPage extends StatefulWidget {
  const AuthorsPage({super.key});

  @override
  State<AuthorsPage> createState() => _AuthorsPageState();
}

class _AuthorsPageState extends State<AuthorsPage> {
  double opacity = 0.0;

  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomizedAppbar(),
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomizedBackground(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Column(
                children: [
                  FadeInDown(
                    from: 10,
                    delay: Duration(milliseconds: 500),
                    child: Text(
                      '앗 이 사람들이 비밀을 털어놓고 있습니다 ! ! !',
                      style: TextStyle(
                        fontFamily: 'NeoFont',
                        fontSize: 14,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  FadeInDown(
                    from: 10,
                    delay: Duration(milliseconds: 1000),
                    child: Text(
                      "흰동가리가 영원히 비밀을 지키진 않네요...",
                      style: TextStyle(
                        fontFamily: 'NeoFont',
                        fontSize: 14,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              AnimatedOpacity(
                opacity: opacity,
                duration: Duration(milliseconds: 2000),
                child: Dance(
                  delay: Duration(milliseconds: 2500),
                  child: Image.asset(
                    'assets/images/clown-fish-left.png',
                    width: 20,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 35,
                  left: 50,
                  right: 50,
                ),
                height: 500.0,
                child: FutureBuilder(
                    future: SecretCatApi.fetchAuthors(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData)
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              var items = snapshot.data![index];
                              return FadeInDown(
                                child: ListTile(
                                  leading: items.username != null
                                      ? CircleAvatar(
                                          backgroundImage:
                                              NetworkImage(items.avatar!))
                                      : CircleAvatar(
                                          child: Text(items.username[0])),
                                  title: Text(
                                    items.username,
                                    style: TextStyle(
                                      fontFamily: 'NeoFont',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFF2D698A),
                                    ),
                                  ),
                                  subtitle: Text(
                                    items.id,
                                    style: TextStyle(
                                      fontFamily: 'NeoFont',
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              );
                            });
                      return Center(child: CircularProgressIndicator());
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
