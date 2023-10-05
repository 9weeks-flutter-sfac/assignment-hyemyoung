import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:secret_cat_sdk/secret_cat_sdk.dart';
import 'widgets/CustomizedAppbar.dart';
import 'widgets/CustomizedBackground.dart';

class SecretPage extends StatefulWidget {
  const SecretPage({super.key});

  @override
  State<SecretPage> createState() => _SecretPageState();
}

class _SecretPageState extends State<SecretPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomizedAppbar(),
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomizedBackground(),
          FutureBuilder(
              future: SecretCatApi.fetchSecrets(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done)
                  return ListView.builder(
                    shrinkWrap: false,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var secretDatas = snapshot.data![index].secret.toString();

                      var isEvenIndex = index.isEven;
                      var right = isEvenIndex ? 20.0 : null;
                      var left = isEvenIndex ? null : 20.0;
                      var fishImg = isEvenIndex
                          ? 'assets/images/clown-fish-right.png'
                          : 'assets/images/clown-fish-left.png';

                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: BounceInUp(
                              child: Align(
                                alignment: isEvenIndex
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                child: Container(
                                  width: 200,
                                  height: 200,
                                  child: ElasticIn(
                                    child: Stack(
                                      children: [
                                        Stack(
                                          fit: StackFit.expand,
                                          children: [
                                            Positioned(
                                              bottom: 0,
                                              left: left,
                                              right: right,
                                              child: Image.asset(
                                                fishImg,
                                                width: 40,
                                                height: 40,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Text(
                                                    secretDatas,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontFamily: 'NeoFont',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF2D698A),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  '- ${index + 1}번째 흰동가리 -',
                                                  style: TextStyle(
                                                      fontFamily: 'NeoFont',
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFA1C8DD).withOpacity(0.1),
                                      border: Border.all(
                                          color: Color(0xFFA1C8DD), width: 1),
                                      borderRadius: BorderRadius.circular(99)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                return Center(child: CircularProgressIndicator());
              })
        ],
      ),
    );
  }
}
