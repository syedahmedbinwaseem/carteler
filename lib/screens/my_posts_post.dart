import 'package:carteler/utils/custom_dialog.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';

class OwnPost extends StatefulWidget {
  const OwnPost({Key? key}) : super(key: key);

  @override
  _OwnPostState createState() => _OwnPostState();
}

class _OwnPostState extends State<OwnPost> {
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
        // padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Last Status: ',
                    style: TextStyle(
                        decorationThickness: 2,
                        // fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: width * 0.03),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.calendar_today,
                    size: 15,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Sep 29, 2020',
                    style: TextStyle(
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                        fontSize: width * 0.03),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.watch_rounded,
                    size: 15,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '9:35 am',
                    style: TextStyle(
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                        fontSize: width * 0.03),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
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
                      const SizedBox(height: 5),
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink),
                          borderRadius: BorderRadius.circular(12.5),
                        ),
                        child: Center(
                            child: Text(
                          'Food',
                          style: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold),
                        )),
                      )
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
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                  'This is opening of my new café We are providing quick and quality services  with … see more'),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
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
            ),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        const SizedBox(height: 6),
                        CircleAvatar(
                          radius: width * 0.05,
                          backgroundImage: AssetImage('assets/images/user.jpg'),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                        // height: width * 0.2,
                        // width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Billboard\'s Admin',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text(
                                  '48m',
                                  style: TextStyle(color: Colors.grey.shade500),
                                )
                              ],
                            ),
                            Text(
                              'Great Content will pass your post!',
                              style: TextStyle(),
                            ),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.reply))
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 10),
            Divider(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Utilities.button(40, 100, 'Request\nPublication',
                        () => null, Colors.white, Colors.green),
                    const SizedBox(width: 10),
                    Utilities.button(40, 100, 'Re-Post', () => null,
                        Colors.white, Colors.blue),
                    const SizedBox(width: 10),
                    Utilities.button(40, 100, 'Suspend', () {}, Colors.white,
                        Colors.grey.shade500),
                    const SizedBox(width: 10),
                    Utilities.button(40, 100, 'Delete', () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CustomDialog(
                                headerText: 'Delete Post?',
                                bottomText: 'This action cannot be undone.',
                                successText: 'Your Post is Deleted.');
                          });
                    }, Colors.white, Colors.red),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
