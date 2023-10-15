import 'package:flutter/material.dart';
import '../model/post.dart';

class PostBottomSheet extends StatelessWidget {
  const PostBottomSheet({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        height: 250,
        child: Column(
          children: [
            Text(
              post.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(post.body),
          ],
        ));
  }
}
