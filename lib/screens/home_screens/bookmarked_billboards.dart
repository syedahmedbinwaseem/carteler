import 'package:carteler/screens/bookmarked_board.dart';
import 'package:carteler/screens/bookmarked_post.dart';
import 'package:carteler/utils/colors.dart';
import 'package:carteler/utils/custom_drawer.dart';
import 'package:carteler/utils/scroll_behavior.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';

class BookmarkedBillboards extends StatefulWidget {
  const BookmarkedBillboards({Key? key}) : super(key: key);

  @override
  _BookmarkedBillboardsState createState() => _BookmarkedBillboardsState();
}

class _BookmarkedBillboardsState extends State<BookmarkedBillboards> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: Utilities.appBar(width),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bookmarked Billboards',
              style: TextStyle(
                  color: navyBlue,
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          BoardBookmarked(),
                          const SizedBox(height: 10)
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
