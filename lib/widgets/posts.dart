import 'package:flutter/cupertino.dart';
import 'package:lab2/screens/profile.dart';

class Posts extends StatelessWidget {
  const Posts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: const [
            InstaPost(image: 'images/foto7.jpg'),
            Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
            InstaPost(image: 'images/foto5.jpg'),
            Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
            InstaPost(image: 'images/foto6.jpg'),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: const [
            InstaPost(image: 'images/foto8.jpg'),
            Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
            InstaPost(image: 'images/foto9.jpg'),
            Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
            InstaPost(image: 'images/foto4.jpg'),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: const [
            InstaPost(image: 'images/foto7.jpg'),
            Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
            InstaPost(image: 'images/foto5.jpg'),
            Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
            InstaPost(image: 'images/foto6.jpg'),
          ],
        ),
      ),
    ]);
  }
}