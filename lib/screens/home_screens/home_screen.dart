import 'package:carteler/screens/post.dart';
import 'package:carteler/utils/custom_drawer.dart';
import 'package:carteler/utils/scroll_behavior.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const CustomDrawer(),
      // backgroundColor: Colors.white,
      appBar: Utilities.appBar(width),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: const [
                    Post(),
                    SizedBox(height: 20),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
