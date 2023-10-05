import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';
import 'widgets/CustomizedAppbar.dart';
import 'widgets/CustomizedBackground.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  var inputContoller = TextEditingController();
  var isBounce = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomizedAppbar(),
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomizedBackground(),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    controller: inputContoller,
                    autofocus: true,
                    maxLength: 300,
                    maxLines: 10,
                    style: TextStyle(
                      fontFamily: 'NeoFont',
                      fontSize: 16,
                      letterSpacing: 1.5,
                    ),
                    cursorColor: Color(0xFF2D698A),
                    decoration: InputDecoration(
                      hintText: ' 익명의 흰동가리로서 비밀을 작성해주세요',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'NeoFont',
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      fillColor: Color(0xFFA1C8DD).withOpacity(0.1),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Color(0xFFA1C8DD),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                FlipInY(
                  child: GestureDetector(
                    onTap: (() {
                      SecretCatApi.addSecret(inputContoller.text);
                      inputContoller.text = '';
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 16),
                      width: 280,
                      height: 45,
                      child: Text(
                        '비밀 공유',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'NeoFont',
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF2D698A),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
