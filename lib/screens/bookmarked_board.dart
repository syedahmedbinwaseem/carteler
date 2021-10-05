import 'package:carteler/utils/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoardBookmarked extends StatefulWidget {
  const BoardBookmarked({Key? key}) : super(key: key);

  @override
  _BoardBookmarkedState createState() => _BoardBookmarkedState();
}

class _BoardBookmarkedState extends State<BoardBookmarked> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(15),
      child: Container(
          // height: 160,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'Added On: ',
                          style: TextStyle(
                            // decoration: TextDecoration.underline,
                            decorationThickness: 2,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),

                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            TextSpan(
                              text: 'Sep 28, 2020 2:25 pm',
                              style: TextStyle(
                                fontSize: width * 0.03,
                                color: Color.fromRGBO(90, 105, 131, 1),
                              ),
                            )
                          ]),
                    ),
                    Spacer(),
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
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Billboard Address Line 1',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      decorationThickness: 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: width * 0.04),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Hello Guys ! Please check out this new amazing ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              // const SizedBox(height: 10),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Post\'s qty \(XX since addition  date\)',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 20),
            ],
          )),
    );
  }
}
