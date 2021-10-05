import 'package:carteler/utils/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostBookmarked extends StatefulWidget {
  const PostBookmarked({Key? key}) : super(key: key);

  @override
  _PostBookmarkedState createState() => _PostBookmarkedState();
}

class _PostBookmarkedState extends State<PostBookmarked> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        // height: 160,
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: height,
              width: width * 0.3,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/images/post.jpg'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              children: [
                Text(
                  'How to create perfect breakfast for yourselfbreakfast for yourselfbreakfast for yourself',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    decorationThickness: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                      text: 'Saved from ',
                      style: TextStyle(
                        fontSize: width * 0.03,
                        color: Color.fromRGBO(90, 105, 131, 1),
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TextSpan(
                          text: 'Foodlay\'s post',
                          style: TextStyle(
                            // decoration: TextDecoration.underline,
                            decorationThickness: 2,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ]),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.blue,
                    ),
                    const SizedBox(width: 5),
                    Text('Saved on Sep 28, 2020 ',
                        style: TextStyle(
                          fontSize: width * 0.03,
                          color: Color.fromRGBO(90, 105, 131, 1),
                        ))
                  ],
                )
              ],
            )),
            const SizedBox(width: 10),
            Container(
              child: Row(children: [
                Icon(CupertinoIcons.share),
                SizedBox(width: 3),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return CustomDialog(
                            headerText: 'Delete Bookmark?',
                            bottomText: 'This action cannot be undone.',
                            successText: 'Bookmark deleted from list.',
                          );
                        });
                  },
                  child: Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.red,
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
