import 'package:flutter/material.dart';
import 'package:assignment1/model/regist.dart';

class RegistCard extends StatelessWidget {
  const RegistCard({super.key, required this.regist});
  final Regist regist;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Container(
                width: 250,
                child: Image.network(
                  regist.thumbnailImg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      regist.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text(regist.desc),
                  SizedBox(height: 8),
                  SizedBox(
                    width: 220,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('${regist.price}원 결제하고 등록'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
