import 'package:carteler/screens/home_screens/bookmarked_billboards.dart';
import 'package:carteler/screens/home_screens/bookmarked_posts.dart';
import 'package:carteler/screens/home_screens/bottom_navigator.dart';
import 'package:carteler/screens/home_screens/manage_requests.dart';
import 'package:carteler/screens/home_screens/my_posts.dart';
import 'package:carteler/screens/login_and_signup/login.dart';
import 'package:carteler/screens/login_and_signup/welcome.dart';
import 'package:carteler/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var padding = MediaQuery.of(context).padding;
    double height2 = screenHeight - padding.top;
    double status = screenHeight - height2;
    double app = status + 60;
    double initialHeight = screenWidth * 0.2;

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: app - 20),
            CircleAvatar(
              radius: screenWidth * 0.13,
              backgroundColor: navyBlue,
              backgroundImage: const AssetImage('assets/images/user.jpg'),
            ),
            const SizedBox(height: 20),
            Text(
              'Dawn Topping',
              style: TextStyle(
                  decorationThickness: 2,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: screenWidth * 0.06),
            ),
            const SizedBox(height: 10),
            Text(
              'dawntopping@gmail.com',
              style: TextStyle(
                  decorationThickness: 2, fontSize: screenWidth * 0.04),
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Colors.black,
              indent: 15,
              thickness: 1,
              endIndent: 15,
            ),
            const SizedBox(height: 20),
            bookmarkCard(
                "Bookmarks",
                const Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                ),
                screenHeight,
                screenWidth,
                initialHeight,
                expanded, () {
              setState(() {
                expanded = !expanded;
                initialHeight = screenWidth * 0.4;
              });
              print(expanded);
            }),
            const SizedBox(height: 20),
            drawerCard(
                "My Posts",
                const Icon(
                  CupertinoIcons.pen,
                  color: Colors.green,
                ),
                screenHeight,
                screenWidth, () {
              Navigator.of(context, rootNavigator: true).pushReplacement(
                  MaterialPageRoute(builder: (context) => MyPosts()));
            }),
            const SizedBox(height: 20),
            drawerCard(
                "Publish Requests",
                const Icon(
                  CupertinoIcons.envelope,
                  color: Color(0xffD9871C),
                ),
                screenHeight,
                screenWidth, () {
              Navigator.of(context, rootNavigator: true).pushReplacement(
                  MaterialPageRoute(builder: (context) => ManageRequests()));
            }),
            const SizedBox(height: 20),
            drawerCard(
                "Profile",
                const Icon(
                  CupertinoIcons.person,
                  color: Color(0xff06275E),
                ),
                screenHeight,
                screenWidth,
                () {}),
            const SizedBox(height: 20),
            drawerCard(
                "Sign Out",
                const Icon(
                  Icons.exit_to_app,
                  color: Color(0xff0E800E),
                ),
                screenHeight,
                screenWidth, () {
              Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  (route) => false);
            }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget drawerCard(
      String text, Icon icon, double height, double width, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 4,
          child: Container(
            height: width * 0.2,
            width: width * 0.8,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: width * 0.1),
                  icon,
                  const SizedBox(width: 10),
                  Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.05),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bookmarkCard(String text, Icon icon, double height, double width,
      double initialHeight, bool expanded, Function() onTap) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 4,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: expanded == true ? width * 0.4 : width * 0.2,
          width: width * 0.8,
          child: Column(
            mainAxisAlignment: expanded == false
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              expanded ? const SizedBox(height: 15) : Container(),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: width * 0.1),
                    icon,
                    const SizedBox(width: 10),
                    Text(
                      text,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: width * 0.05),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: onTap,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          expanded != true
                              ? Icon(Icons.arrow_drop_down)
                              : Icon(Icons.arrow_drop_up),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              expanded ? const SizedBox(height: 15) : Container(),
              expanded
                  ? Container(
                      width: width,
                      height: 1,
                      color: Colors.grey.shade500,
                    )
                  : Container(),
              expanded
                  ? FlatButton(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: false)
                            .pushReplacement(MaterialPageRoute(
                                builder: (context) => BookmarkedBillboards()));
                      },
                      color: Colors.grey.shade300,
                      height: 50,
                      padding: EdgeInsets.zero,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minWidth: width,
                      child: Text('Bookmarks'),
                    )
                  : Container(),
              expanded
                  ? Container(
                      width: width,
                      height: 1,
                      color: Colors.grey.shade500,
                    )
                  : Container(),
              expanded
                  ? FlatButton(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true)
                            .pushReplacement(MaterialPageRoute(
                                builder: (context) => BottomNavigator(
                                      bookmarked: true,
                                    )));
                      },
                      color: Colors.grey.shade300,
                      height: 50,
                      padding: EdgeInsets.zero,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minWidth: width,
                      child: Text('Posts'),
                    )
                  : Container(),
              expanded
                  ? Container(
                      width: width,
                      height: 1,
                      color: Colors.grey.shade500,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
