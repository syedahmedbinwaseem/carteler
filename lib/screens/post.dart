import 'package:carteler/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material(
      elevation: 0,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        // height: 370,
        width: width,
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: width * 0.065,
                  backgroundImage: AssetImage('assets/images/user.jpg'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Legend',
                      style: TextStyle(
                          decorationThickness: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: width * 0.05),
                    ),
                    Text(
                      'Sep 29, 2020 9:35 am',
                      style: TextStyle(
                          decorationThickness: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500,
                          fontSize: width * 0.025),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.public,
                          color: Colors.blue,
                          size: width * 0.04,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Public',
                          style: TextStyle(
                              decorationThickness: 2,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                              fontSize: width * 0.034),
                        ),
                      ],
                    ),
                    Text(
                      'Residence address xyz',
                      style: TextStyle(
                          decorationThickness: 2,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff589458),
                          fontSize: width * 0.025),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            Text(
                'This is opening of my new café We are providing quick and quality services  with … see more'),
            const SizedBox(height: 15),
            Container(
              height: 200,
              width: width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/post.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 10),
                Icon(
                  CupertinoIcons.hand_thumbsup,
                  color: navyBlue,
                ),
                const SizedBox(width: 10),
                Text('48'),
                const SizedBox(width: 20),
                Icon(
                  CupertinoIcons.hand_thumbsdown,
                  color: navyBlue,
                ),
                const SizedBox(width: 10),
                Text('7'),
                const SizedBox(width: 20),
                Icon(
                  CupertinoIcons.chat_bubble,
                  color: navyBlue,
                ),
                const SizedBox(width: 10),
                Text('4'),
                Spacer(),
                Icon(
                  CupertinoIcons.share,
                  color: navyBlue,
                ),
                const SizedBox(width: 10),
                Icon(
                  CupertinoIcons.heart,
                  color: navyBlue,
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
