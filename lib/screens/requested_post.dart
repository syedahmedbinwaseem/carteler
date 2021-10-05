import 'package:carteler/utils/colors.dart';
import 'package:carteler/utils/custom_dialog.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestedPost extends StatefulWidget {
  const RequestedPost({Key? key}) : super(key: key);

  @override
  _RequestedPostState createState() => _RequestedPostState();
}

class _RequestedPostState extends State<RequestedPost> {
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
              child: Align(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                      text: 'Remaining Draft Time: ',
                      style: TextStyle(
                        fontSize: width * 0.035,
                        color: Color.fromRGBO(90, 105, 131, 1),
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TextSpan(
                          text: '09:43:58',
                          style: TextStyle(
                              // decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffEF4444)),
                        )
                      ]),
                ),
              ),
            ),
            Divider(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Utilities.button(40, 100, 'Accept', () => null,
                        Colors.white, Colors.green),
                    const SizedBox(width: 10),
                    Utilities.button(40, 100, 'Decline', () => null,
                        Colors.white, Colors.red),
                    const SizedBox(width: 10),
                    Utilities.button(40, 100, 'Block/\nUnblock', () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CustomDialog(
                                headerText: 'Block User?',
                                bottomText:
                                    'The user will be blocked by this action.',
                                successText: 'User is now blocked.');
                          });
                    }, Colors.white, Colors.grey.shade500),
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
