// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab2/model/liked.dart';
import 'package:lab2/screens/profile.dart';
import 'package:provider/provider.dart';

import 'model/post_data.dart';
import 'screens/feed.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => LikedModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 4;
  static final List dataPosts = [
    PostData('username1', 'images/foto5.jpg', 'Kyiv, Ukraine',
        'images/foto1.jpg', 100, 2),
    PostData(
        'username2', 'images/foto6.jpg', 'Kyiv', 'images/foto2.jpg', 120, 2),
    PostData(
        'username3', 'images/foto7.jpg', 'Ukraine', 'images/foto3.jpg', 30, 2),
    PostData(
        'username4', 'images/foto8.jpg', 'Lviv', 'images/foto4.jpg', 215, 2),
  ];

  List<PostData> savedPosts = [];

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 4);
  }

  void toggleSavedPost(PostData post) {
    setState(() {
      if (!savedPosts.contains(post)) {
        savedPosts.add(post);
      } else {
        savedPosts.remove(post);
      }
    });
  }

  void onTap(int i) {
    setState(() {
      index = i;

      pageController.animateToPage(index,
          duration: Duration(milliseconds: 400), curve: Curves.easeIn);
    });
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        // ignore: deprecated_member_use
        accentColor: Colors.grey,
        brightness: Brightness.dark,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: const BorderSide(width: 0.5, color: Colors.white)),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        key: _scaffoldKey,
        body: SizedBox.expand(
          child: PageView(
            controller: pageController,
            onPageChanged: (i) {
              setState(() => index = i);
            },
            children: [
              Feed(
                  postsData: dataPosts,
                  addPost: toggleSavedPost,
                  savedPosts: savedPosts),
              Center(child: Text('Search')),
              Center(child: Text('Add new post')),
              Center(child: Text('Liked posts')),
              ProfilePage(savedPosts: savedPosts, addPost: toggleSavedPost),
            ],
          ),
        ),
        floatingActionButton: index == 3
            ? FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              )
            : null,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFFFFFFFF),
          currentIndex: index,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'home_filled',
                tooltip: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'search', tooltip: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: 'add', tooltip: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'like', tooltip: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'account',
                tooltip: ''),
          ],
        ),
      ),
    );
  }
}
