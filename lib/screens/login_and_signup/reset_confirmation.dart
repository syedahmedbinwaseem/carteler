import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';

class ResetConfirmation extends StatefulWidget {
  const ResetConfirmation({Key? key}) : super(key: key);

  @override
  _ResetConfirmationState createState() => _ResetConfirmationState();
}

class _ResetConfirmationState extends State<ResetConfirmation> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.3,
                  width: width,
                  color: Colors.white,
                ),
                Utilities.logoContainer(height, width),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              child: Image.asset('assets/images/checked.png'),
            ),
            const SizedBox(height: 40),
            Text(
              'Password Recovery Information Sent!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: const Color(0xff5D8ED1),
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Text(
                'Please check your inbox for instructions.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 100),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Text(
                'Email not received yet?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  // decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
