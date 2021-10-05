import 'package:carteler/screens/home_screens/bottom_navigator.dart';
import 'package:carteler/screens/my_posts_post.dart';
import 'package:carteler/screens/requested_post.dart';
import 'package:carteler/utils/colors.dart';
import 'package:carteler/utils/custom_drawer.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';

class MyPosts extends StatefulWidget {
  const MyPosts({Key? key}) : super(key: key);

  @override
  _MyPostsState createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        print('asd');
        Navigator.of(context, rootNavigator: false)
            .pushReplacement(MaterialPageRoute(
                builder: (context) => BottomNavigator(
                      bookmarked: false,
                    )));
        return true;
      },
      child: Scaffold(
        appBar: Utilities.appBar(width),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Posts',
                style: TextStyle(
                    color: navyBlue,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          OwnPost(),
                          SizedBox(height: 20),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
